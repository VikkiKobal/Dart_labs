import 'dart:io';
import 'dart:math';

double investmentSimple(double principal, double rate, int years) {
  double sum = principal;
  for (int i = 0; i < years; i++) {
    sum += sum * rate / 100;
  }
  return sum;
}

double investmentTwoPeriods(double principal, double rate1, int years1, double rate2, int years2) {
  double sum = principal;
  for (int i = 0; i < years1; i++) sum += sum * rate1 / 100;
  for (int i = 0; i < years2; i++) sum += sum * rate2 / 100;
  return sum;
}

List<int> threeDigitNumbers() {
  List<int> result = [];
  for (int num = 100; num <= 999; num++) {
    int first = num ~/ 100;
    int second = (num ~/ 10) % 10;
    int third = num % 10;
    if (first >= second + third) result.add(num);
  }
  return result;
}

List<int> appleWarehouse(int totalBoxes, List<int> loads) {
  List<int> remainingAfterEach = [];
  int remaining = totalBoxes;

  for (int load in loads) {
    if (load > remaining) remaining = 0;
    else remaining -= load;
    remainingAfterEach.add(remaining);
    if (remaining == 0) break;
  }

  return remainingAfterEach;
}



Map<String, int> countNumbers(List<int> numbers) {
  int positive = 0, negative = 0, zero = 0;
  for (int num in numbers) {
    if (num > 0) positive++;
    else if (num < 0) negative++;
    else zero++;
  }
  return {'positive': positive, 'negative': negative, 'zero': zero};
}

void main() {
  print(investmentSimple(1000, 20, 20));
  print(investmentTwoPeriods(1000, 20, 20, 27, 17));
  print(threeDigitNumbers());
  print(appleWarehouse(15, [5, 7, 6]));
  print(countNumbers([1, -3, 0, 5, -2, 0, 4]));
}
