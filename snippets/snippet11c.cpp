#include <iostream>
#include <memory>

struct Resource {};

struct Target {
    Target(const Resource&) { std::cout << 'a'; }
    Target(Resource&&) { std::cout << 'b'; }
};

auto make_target(auto&& resource) {
    return std::make_unique<Target>(std::forward<decltype(resource)>(resource));
}

int main() {
    Resource resource;
    make_target(resource);
    make_target(Resource(resource));
    make_target(std::move(resource));
}
