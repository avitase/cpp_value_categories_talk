#include <iostream>

struct Resource {};
struct ResourceManager {
    Resource resource;

    // what if we want to do sth. with the result before returning?
    decltype(auto) visit(auto visitor) { return visitor(resource); }
};
struct Target {
    Target(const Resource&) { std::cout << 'a'; }
    Target(Resource&&) { std::cout << 'b'; }
};

int main() {
    ResourceManager rm;
    Target(rm.visit([](Resource& r) -> Resource& { return r; }));
    Target(rm.visit([](Resource& r) -> Resource { return r; }));
    Target(rm.visit([](Resource& r) -> Resource&& { return std::move(r); }));
}
