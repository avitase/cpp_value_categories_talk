#include <iostream>
#include <utility>

struct S {
    S() { std::cout << 'a'; }
    S(const S&) { std::cout << 'b'; }
    S(S&&) { std::cout << 'c'; }
};

void f(const S&) { std::cout << '1'; }
void f(S&) { std::cout << '2'; }
void f(S&&) { std::cout << '3'; }

int main() {
    S s1;
    f(s1);
    f(S{});
    f(std::move(s1));
}
