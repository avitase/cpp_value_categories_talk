// -std=c++17
#include <iostream>

struct S {
    S() { std::cout << 'a'; }
    S(const S &) { std::cout << 'b'; }
    S(const S &&) { std::cout << 'c'; }
    S &operator=(const S &) { std::cout << 'd'; return *this; }
    S &operator=(const S &&) { std::cout << 'e'; return *this; }
};

S f() { return S{}; }

int main() {
    S s(S{}); std::cout << ", ";
    auto s1 = f(); std::cout << ", ";
    auto s2{f()}; 
}
