import 'dart:io';

double add(double a, double b) => a + b;

double celsiusToFahrenheit(double c) => (c * 9 / 5) + 32;

bool isDivider(double a, double b) {
  if (b == 0) return false;
  return a % b == 0;
}

int howManyYearsTo100(int age) {
  if (age < 0) return -1;
  return 100 - age;
}

void rotateValues(List<int> values) {
  int temp = values[0];
  values[0] = values[1];
  values[1] = values[2];
  values[2] = temp;
}

String getCentury(int year) {
  if (year <= 0) return 'Невалідний рік';
  return ((year + 99) ~/ 100).toString();
}

int fullWeeks(int days) => days ~/ 7;

int monthAfterN(int currentMonth, int N) => ((currentMonth - 1 + N) % 12) + 1;

Map<String, int> monthsToYearsAndMonths(int months) {
  int years = months ~/ 12;
  int remainingMonths = months % 12;
  return {'years': years, 'months': remainingMonths};
}

Map<String, int> coinsToMoney(int two, int five, int twentyFive, int fifty) {
  int totalKop = 2 * two + 5 * five + 25 * twentyFive + 50 * fifty;
  int hryvnias = totalKop ~/ 100;
  int kopiyky = totalKop % 100;
  return {'hryvnias': hryvnias, 'kopiyky': kopiyky};
}

void main() {
  print(add(5, 3));
  print(celsiusToFahrenheit(18));
  print(isDivider(8, 3));
  print(howManyYearsTo100(25));

  List<int> nums = [1, 2, 3];
  rotateValues(nums);
  print(nums);

  print(getCentury(2024));
  print(fullWeeks(20));
  print(monthAfterN(3, 14));

  Map<String, int> yearsAndMonths = monthsToYearsAndMonths(28);
  print([yearsAndMonths['years'], yearsAndMonths['months']]);

  Map<String, int> money = coinsToMoney(5, 3, 2, 1);
  print([money['hryvnias'], money['kopiyky']]);
}










  // stdout.write('Введіть ....: ');
  // String? name = stdin.readLineSync();
  
  // stdout.writeln('Привіт, $name!');
