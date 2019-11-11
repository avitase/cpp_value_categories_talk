# About
Presentation material for iCSC 2020's talk "Demystifying Value Categories in C++". The [slides can be found here.](icsc2020_nmeinert.pdf)

# Abstract
Value categories are omnipresent in today's C++ code bases. Since the advent of move semantics the field continuously becomes wider and knowing terms such as *lvalue* and *rvalue* only from compiler error messages is not enough anymore. I will present an overview about C++ value categories and decay rules, the subtle difference between pointers and references, explain why neither std::move moves, nor std::forward forward values and talk about implication on related topic such as RVO.
