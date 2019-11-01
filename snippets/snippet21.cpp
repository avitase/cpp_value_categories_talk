#include <utility>

struct S final {
    S() noexcept;
    S(const S&) noexcept;
    S(S&&) noexcept;
    ~S() noexcept;
};

S f1() { S s; return s; }
S f2() { S s; return std::move(s); }
S f3() { const S s; return s; }
S f4() { const S s; return std::move(s); }
