#include <type_traits>

template <typename T>
T&& forward(std::remove_reference_t<T>& t) {
    return static_cast<T&&>(t);
}
