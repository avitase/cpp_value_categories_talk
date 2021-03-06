#include <iostream>

struct Resource {};
struct Target {
    Target(const Resource&) { std::cout << 'a'; }
    Target(Resource&&) { std::cout << 'b'; }
};
struct ResourceManager {
    Resource resource;

    decltype(auto) visit(auto visitor) {
        decltype(auto) result = visitor(resource);
        return static_cast<decltype(result)>(result);
    }
};

int main() {
    ResourceManager rm;
    Target(rm.visit([](Resource& r) -> Resource& { return r; }));
    Target(rm.visit([](Resource& r) -> Resource { return r; }));
    Target(rm.visit([](Resource& r) -> Resource&& { return std::move(r); }));
}
