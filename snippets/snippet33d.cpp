#include <iostream>
#include <utility>

struct S {
    ~S() { std::cout << 'a'; }
};

void f(const S&) { std::cout << '1'; }
void f(S&) { std::cout << '2'; }
void f(S&&) { std::cout << '3'; }

int main() {
    S&& r1 = S{};
    f(r1);

    S&& r2 = S{};
    f(std::move(r2));
}
