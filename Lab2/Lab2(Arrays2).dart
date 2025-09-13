import 'dart:io';

// 1. Середній бал і категорія
String studentCategory(List<int> marks) {
  double avg = marks.reduce((a, b) => a + b) / marks.length;
  String avgStr = avg.toStringAsFixed(2);

  if (marks.contains(2)) return "Двійочник (avg=$avgStr)";
  if (marks.contains(3)) return "Трійочник (avg=$avgStr)";
  if (marks.every((m) => m == 5)) return "Відмінник (avg=$avgStr)";
  if (marks.every((m) => m >= 4)) return "Хорошист (avg=$avgStr)";
  return "Категорія не визначена (avg=$avgStr)";
}

// 2. Відвідувачі магазину
void shopStats(List<int> visitors) {
  print("Дні з <20: ${[
    for (int i = 0; i < visitors.length; i++) if (visitors[i] < 20) i + 1
  ]}");

  int minVal = visitors.reduce((a, b) => a < b ? a : b);
  int maxVal = visitors.reduce((a, b) => a > b ? a : b);

  print("Дні з мінімумом ($minVal): ${[
    for (int i = 0; i < visitors.length; i++) if (visitors[i] == minVal) i + 1
  ]}");
  print("Дні з максимумом ($maxVal): ${[
    for (int i = 0; i < visitors.length; i++) if (visitors[i] == maxVal) i + 1
  ]}");

  int workDays = visitors.sublist(0, 5).reduce((a, b) => a + b);
  int weekend = visitors.sublist(5).reduce((a, b) => a + b);

  print("Робочі дні = $workDays, Вихідні = $weekend");
}

// 3. Імена учнів
int countIvan(List<String> names) {
  return names.where((n) => n == "Іван").length;
}

// 4. Ціни та товари
void affordable(List<String> items, List<int> prices, int money) {
  print("Можна купити за $money грн:");
  for (int i = 0; i < items.length; i++) {
    if (prices[i] <= money) {
      print("- ${items[i]} за ${prices[i]} грн");
    }
  }
}

int firstMore1000(List<int> prices) {
  return prices.indexWhere((p) => p > 1000);
}

int lastMore1000(List<int> prices) {
  return prices.lastIndexWhere((p) => p > 1000);
}

void main() {
  print(studentCategory([5, 5, 4, 4, 5]));

  shopStats([15, 30, 25, 18, 22, 40, 10]);

  print("Кількість Іванів: ${countIvan(['Іван', 'Марія', 'Іван', 'Олег'])}");

  List<String> items = ["Хліб", "Молоко", "Сир", "Ноутбук"];
  List<int> prices = [25, 40, 150, 1200];

  affordable(items, prices, 200);

  print("Перша ціна >1000: ${firstMore1000(prices)}");
  print("Остання ціна >1000: ${lastMore1000(prices)}");
}
