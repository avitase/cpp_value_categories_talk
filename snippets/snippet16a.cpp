#include <iostream>

struct Resource {
    Resource() {}
    Resource(const Resource&) { std::cout << 'a'; }
};
struct ResourceManager {
    Resource resource;
 
    Resource visit(auto visitor) {
        Resource result = visitor(resource);
        return result;
    }
};
struct Target { Target(const Resource&) {}; };

int main() {
    ResourceManager rm;
    Target(rm.visit([](Resource& r) -> Resource { return r; }));
}
