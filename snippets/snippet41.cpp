#include <array>
#include <span>

constexpr auto f() {
    std::array x{4, 8, 15, 16, 23, 42};
    std::span x_view{x};
    return 0;
}

int main() {
    static_assert(f() == 0);
}
