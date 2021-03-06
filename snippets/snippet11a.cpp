#include <iostream>
#include <memory>

struct Resource {};

struct Target {
    Target(const Resource&) { std::cout << 'a'; }
    Target(Resource&&) { std::cout << 'b'; }
};

auto make_target(??? resource) {
    return std::make_unique<Target>(???);
}

int main() {
    Resource resource;
    make_target(resource);            // should print 'a'
    make_target(Resource(resource));  // should print 'b'
    make_target(std::move(resource)); // should print 'b'
}
