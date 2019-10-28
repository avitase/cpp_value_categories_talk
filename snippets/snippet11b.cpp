#include <iostream>
#include <memory>

struct Resource {};

struct Target {
    Target(const Resource&) { std::cout << 'a'; }
    Target(Resource&&) { std::cout << 'b'; }
};

template <typename T> auto make_target(T&& resource) {
    return std::make_unique<Target>(std::forward<T>(resource));
}

int main() {
    Resource resource;
    make_target(resource);            //  lvalue: T = Resource&
    make_target(Resource(resource));  // prvalue: T = Resource
    make_target(std::move(resource)); //  xvalue: T = Resource
}
