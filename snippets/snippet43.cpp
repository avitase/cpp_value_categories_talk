#include <string>
#include <string_view>

auto get_size(const std::string& s) {
	return s.size();
}

auto get_size(std::string_view sv) {
    return sv.size();
}
