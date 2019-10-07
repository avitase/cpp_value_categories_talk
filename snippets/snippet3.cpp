#include <cstddef>
#include <type_traits>
#include <utility>

template <typename T>
struct Data final {
    T *data;
    explicit Data(const std::size_t size): data(new T[size]) {}
    ~Data() { delete [] data; }
};

template <typename ...Ts>
auto pack(Ts &&... t) {
    Data<std::common_type_t<Ts...>> d(sizeof...(Ts));
    auto p = d.data;
    ((*p++ = std::forward<decltype(t)>(t)),...);
    return d;
}
