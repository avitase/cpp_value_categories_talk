#include <iostream>
#include <type_traits>

struct S{};

void f(S&) { std::cout << 'a'; }
void f(S&&) { std::cout << 'b'; }

int main() {
    auto&& r1 = S{};
    static_assert(std::is_same_v<decltype(r1), S&&>);
    f(r1);
    f(static_cast<S&&>(r1));
    
    S s;
    auto&& r2 = s;
    static_assert(std::is_same_v<decltype(r2), S&>);
    f(r2);
}
