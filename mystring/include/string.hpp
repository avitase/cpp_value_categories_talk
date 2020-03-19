#ifndef MYSTRING_STRING_H
#define MYSTRING_STRING_H

#include <cstdlib>
#include <cstring>
#include <initializer_list>
#include <vector>

namespace mystr {
namespace detail {
template <typename T>
[[nodiscard]] T* alloc(std::size_t size) noexcept {
    return static_cast<T*>(std::malloc(size));
}

template <typename T>
[[nodiscard]] T* alloc(T* ptr, std::size_t size) noexcept {
    return static_cast<T*>(std::realloc(ptr, size));
}
} // namespace detail

template <bool debug = false>
struct string final {
    using value_type = char;
    value_type* data;
    std::size_t size;

    constexpr string() : data(nullptr), size(0) {}

    explicit string(std::initializer_list<value_type> chars)
        : data(detail::alloc<value_type>(chars.size())), size(chars.size()) {
        std::copy(chars.begin(), chars.end(), &data[0]);
    }

    ~string() {
        if (data != nullptr) {
            std::free(data);
        }
    }

    void fill_debug_info() {
        const char* debug_str = "Jason was here!";
        size = strlen(debug_str);
        data = detail::alloc<value_type>(data, size);
        std::memcpy(data, debug_str, size);
    }

    string(const string& other)
        : data(detail::alloc<value_type>(other.size)), size(other.size) {
        std::memcpy(data, other.data, size);
    }

    string(string&& other) : data(nullptr), size(0) {
        std::swap(data, other.data);
        std::swap(size, other.size);
        if constexpr (debug) {
            other.fill_debug_info();
        }
    }

    string& operator=(const string& other) {
        size = other.size;
        data = detail::alloc(data, other.size);
        std::memcpy(data, other.data, size);
        return *this;
    }

    string& operator=(string&& other) {
        std::swap(data, other.data);
        std::swap(size, other.size);
        if constexpr (debug) {
            other.fill_debug_info();
        }
        return *this;
    }

    string& operator+=(const string& other) {
        data = detail::alloc(data, size + other.size);
        std::memcpy(&data[size], other.data, other.size);
        size += other.size;
        return *this;
    }

    string operator+(const string& other) const& {
        string str;
        str.size = size + other.size;
        str.data = detail::alloc<value_type>(str.size);
        std::memcpy(&str.data[0], data, size);
        std::memcpy(&str.data[size], other.data, other.size);
        return str;
    }

    string operator+(const string& other) && {
        if constexpr (debug) {
            auto sum = operator+=(other);
            fill_debug_info();
            return sum;
        } else {
            return operator+=(other);
        }
    }

    template <typename T>
    [[nodiscard]] bool operator==(const T& other) const noexcept {
        if (size != other.size) {
            return false;
        }

        for (std::size_t i = 0; i < size; i++) {
            if (data[i] != other.data[i]) {
                return false;
            }
        }

        return true;
    }

    template <typename T>
    [[nodiscard]] bool operator!=(const T& other) const noexcept {
        return not operator==(other);
    }

    [[nodiscard]] auto to_vector() const {
        return std::vector<value_type>(data, &data[0] + size);
    }
};
} // namespace mystr

#endif // MYSTRING_STRING_H
