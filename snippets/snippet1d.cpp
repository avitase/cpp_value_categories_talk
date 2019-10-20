// -O3
void side_effect();

int f(const int &x) {
    auto a = x;
    side_effect();
    return a - x;
}
