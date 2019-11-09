#include <iostream>
#include <utility>

struct S{
    S() { std::cout << 'a'; }
    S(const S&) { std::cout << 'b'; }
    S(S&&) { std::cout << 'c'; }
};

int main() {
    S s1;
    S s2(s1);
    S s3(S{});
    S s4(std::move(s1));
}
