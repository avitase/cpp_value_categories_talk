#include <utility>

struct S final {
    S() noexcept;
    S(const S&) noexcept;
    S(S&&) noexcept;
    ~S() noexcept;
};
auto f() { return std::pair<S, S>{}; }
S g1() { auto [s1, s2] = f(); return s1; }
S g2() { auto&& [s1, s2] = f(); return s1; }
S g3() { auto [s1, s2] = f(); return std::move(s1); }
S g4() { auto&& [s1, s2] = f(); return std::move(s1); }
