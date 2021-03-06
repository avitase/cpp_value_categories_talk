struct S {
    S(int) noexcept;
    S(const S&) noexcept;
    S(const S&&) noexcept;
    ~S() noexcept;
};

S f1(bool x) { return x ? S{1} : S{2}; }
S f2(bool x) { S s{1}; return x ? s : S{2}; }
