#include <array>
#include <span>

int main() {
    constexpr std::array x{
        4, 8, 15, 16, 23, 42
    };
    constexpr std::span x_view{x};
}
