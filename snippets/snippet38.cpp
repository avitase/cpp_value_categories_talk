#include <iostream>

struct S{
    void f() & { std::cout << 'a'; }
    void f() && { std::cout << 'b'; }
};

int main() {
    auto&& r1 = S{};
    r1.f();
    static_cast<decltype(r1)>(r1).f();

    auto&& r2 = r1;
    r2.f();
    static_cast<decltype(r2)>(r2).f();
}
