#include <iostream>

struct S {
    S() {}
    S(const S&) { std::cout << 'A'; }
    S(S&&) { std::cout << 'B'; }
};

int main() {
    const S s;
    auto s2 = std::move(s);
}
