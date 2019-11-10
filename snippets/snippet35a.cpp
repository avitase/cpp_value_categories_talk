#include <iostream>
#include <type_traits>

struct S {
    S() { std::cout << 'a'; }
    S(const S&) { std::cout << 'b'; }
    S(S&&) { std::cout << 'c'; }
};

template <typename T>
S f(T&& t) { return t; }

int main() {
    S s{};
    f(s);
    f(std::move(s));
}
