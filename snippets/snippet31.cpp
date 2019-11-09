#include <iostream>
#include <utility>

struct S{};

void f(const S&) { std::cout << 'a'; }
void f(S&&) { std::cout << 'b'; }

int main() {
    S s;
    f(s);            // prints 'a'
    f(std::move(s)); // prints 'b'
}
