#include <cpp11.hpp>
#include <stdint.h>

using namespace cpp11;
namespace writable = cpp11::writable;

[[cpp11::register]] list
linfit_(doubles xs, doubles ys) {
  double sum_x = 0;
  double sum_y = 0;
  double sum_x2 = 0;
  double sum_xy = 0;
  std::size_t N = xs.size();

  for (double x : xs) {
    sum_x += x;
    sum_x2 += x * x;
  }
  for (double y : ys) {
    sum_y += y;
  }

  for (size_t i = 0; i < N; i++) {
    sum_xy += xs[i] * ys[i];
  }

  double a = (sum_x * sum_y - N * sum_xy) / (sum_x * sum_x - N * sum_x2);
  double b = (sum_x * sum_xy - sum_y * sum_x2) / (sum_x * sum_x - N * sum_x2);

  return writable::list({"m"_nm = a, "k"_nm = b});
}

[[cpp11::register]] double
div_dif_(doubles xs, doubles ys) {
  std::size_t N = xs.size();
  double divdif = 0;
  for (std::size_t j = 0; j < N; j++) {
    double denom = 1;
    for (std::size_t i = 0; i < N; i++) {
      if (i != j) {
        denom *= xs[j] - xs[i];
      } 
    }

    divdif += ys[j] / denom;
  }

  return divdif;
}

[[cpp11::register]] double
newton_basis_(double x, doubles xs) {
  double basis = 1;
  for (double n : xs) {
    basis *= x - n;
  }

  return basis;
}
