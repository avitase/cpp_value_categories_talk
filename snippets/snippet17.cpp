#include <iostream>

struct Resource {
    Resource() {}
    Resource(const Resource&) { std::cout << 'a'; }
};
struct ResourceManager {
    Resource resource;

    template <typename T>
    static constexpr bool returns_rref = std::is_same_v<std::invoke_result_t<T, Resource&>, Resource&&>;

    template <typename T, std::enable_if_t<returns_rref<T>, int> = 0>
    decltype(auto) visit(T visitor) {
        decltype(auto) result = visitor(resource);
        return std::move(result);
    }

    template <typename T, std::enable_if_t<not returns_rref<T>, int> = 0>
    auto visit(T visitor) -> decltype(visitor(resource)) {
        decltype(auto) result = visitor(resource);
        return result;
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
