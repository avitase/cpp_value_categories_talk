#include <iostream>

struct Resource {
    Resource() {}
    Resource(const Resource&) { std::cout << 'a'; }
};
struct ResourceManager {
    Resource resource;

    template <typename T>
    auto visit(T visitor) -> decltype(visitor(resource)) {
        using R = std::invoke_result_t<T, Resource&>;
        if constexpr (std::is_same_v<R, Resource&&>) {
            decltype(auto) result = visitor(resource);
            return std::move(result);
        } else {
            decltype(auto) result = visitor(resource);
            return result;
        }
    }
};
struct Target {
    Target(const Resource&) { std::cout << 'b'; }
    Target(Resource&&) { std::cout << 'c'; }
};

int main() {
    ResourceManager rm;
    Target(rm.visit([](Resource &r) -> Resource& { return r; }));
    Target(rm.visit([](Resource &r) -> Resource { return r; }));
    Target(rm.visit([](Resource &r) -> Resource&& { return std::move(r); }));
}
