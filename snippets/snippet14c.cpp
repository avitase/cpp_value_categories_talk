#include <iostream>

struct Resource {};
struct ResourceManager {
    Resource resource;

    Resource&& visit(auto visitor) {
        Resource&& result = visitor(resource);
        return std::move(result); // static_cast<Resource&&>(result)
    }
};
struct Target {
    Target(const Resource&) { std::cout << 'a'; };
    Target(Resource&&) { std::cout << 'b'; }
};

int main() {
    ResourceManager rm;
    Target(rm.visit([](Resource& r) -> Resource&& { return std::move(r); }));
}
