#include <functional>

template <typename Iter, typename Callable, typename... Args>
void foreach (Iter current, Iter end, Callable op, const Args&... args) {
    while (current != end) {
        std::invoke(op, args..., *current);
        ++current;
    }
}
