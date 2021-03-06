#include <iostream>

struct Resource {};
struct ResourceManager {
    Resource resource;

    ??? visit(auto visitor) {
        ??? result = visitor(resource);
        return ???;
    }
};
struct Target {
    Target(const Resource&) { std::cout << 'a'; }
    Target(Resource&&) { std::cout << 'b'; }
};

int main() {
    ResourceManager rm;
    Target(rm.visit([](Resource& r) -> Resource& { return r; }));
}
