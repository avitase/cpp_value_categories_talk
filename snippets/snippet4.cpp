// -O3 -std=c++14 -fno-elide-constructors
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
    S s(S{}); std::cout << '\n';
    auto s1 = f(); std::cout << '\n';
    auto s2{f()}; std::cout << '\n';    
}
