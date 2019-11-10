#include <type_traits>

template <typename T>
decltype(auto) move(T&& t) {
    using R = std::remove_reference_t<T>&&;
    return static_cast<R>(t);
}
