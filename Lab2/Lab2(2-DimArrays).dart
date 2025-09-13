import 'dart:math';

void main() {
  List<List<int>> profit = [
    [120, 200, 300, 150, 90, 400, 250],   
    [80, 100, 250, 220, 300, 500, 100],   
    [200, 300, 100, 50, 75, 150, 400],   
  ];

  // Загальний прибуток кожного магазину за тиждень
  List<int> shopSums =
      profit.map((week) => week.reduce((a, b) => a + b)).toList();
  print("1) Прибуток кожного магазину: $shopSums");

  // Загальний прибуток усіх магазинів по днях
  int days = profit[0].length;
  List<int> daySums = List.filled(days, 0);
  for (var shop in profit) {
    for (int d = 0; d < days; d++) {
      daySums[d] += shop[d];
    }
  }
  print("2) Прибуток по днях: $daySums");

  // Загальний прибуток за робочі дні (пн–пт)
  int workSum = daySums.sublist(0, 5).reduce((a, b) => a + b);
  print("3) Робочі дні = $workSum");

  // Загальний прибуток за вихідні
  int weekendSum = daySums.sublist(5).reduce((a, b) => a + b);
  print("4) Вихідні = $weekendSum");

  // Максимальний прибуток у середу (індекс = 2)
  int maxWed = profit.map((shop) => shop[2]).reduce(max);
  print("5) Макс. прибуток у середу: $maxWed");

  // Усі прибутки >200
  List<int> more200 = profit.expand((shop) => shop.where((x) => x > 200)).toList();
  print("6) Значення >200: $more200");

  // Відсортувати кожен тиждень за зростанням
  for (var shop in profit) {
    shop.sort();
  }
  print("7) Кожен тиждень відсортований: $profit");

  // Відсортувати тижні за спаданням макс. елемента
  profit.sort((a, b) => b.reduce(max).compareTo(a.reduce(max)));
  print("8a) За спаданням макс. елемента: $profit");

  // Відсортувати тижні за спаданням суми
  profit.sort((a, b) =>
      b.reduce((s, x) => s + x).compareTo(a.reduce((s, x) => s + x)));
  print("8b) За спаданням суми: $profit");
}
