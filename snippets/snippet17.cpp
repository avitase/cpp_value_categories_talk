#include <iostream>

struct Resource {
    Resource() {}
    Resource(const Resource&) { std::cout << 'a'; }
};
struct ResourceManager {
    Resource resource;

    template <typename T>
    decltype(auto) visit(T visitor) {
        decltype(auto) result = visitor(resource);
        if constexpr (std::is_same_v<decltype(result), Resource&&>) {
            return std::move(result);
        } else {
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
