#include <vector>

int main() {
    std::vector<int> v;
    v.push_back(1);
    auto& x = v[0];
    v.push_back(2);
    return x;
}
