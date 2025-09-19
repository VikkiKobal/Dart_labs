import 'dart:math';

// 1. Для 3 чисел
Map<String, int> stats3(int a, int b, int c) {
  List<int> arr = [a, b, c];
  int par = 0, plus = 0, big100 = 0;

  for (int x in arr) {
    if (x % 2 == 0) par++;
    if (x > 0) plus++;
    if (x > 100) big100++;
  }

  return {"par": par, "plus": plus, "big100": big100};
}

// 2. Геометрія
double dist(double x1, double y1, double x2, double y2) {
  return sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
}

bool inRect(double x, double y, double x1, double y1, double x2, double y2) {
  return (x >= x1 && x <= x2 && y >= y1 && y <= y2);
}

bool inCircle(double x, double y, double cx, double cy, double r) {
  return dist(x, y, cx, cy) <= r;
}

// 3. Підрахувати середню температуру серед додатних
double avgPositiveTemps(List<int> temps) {
  int sum = 0;
  int count = 0;

  temps.where((t) => t > 0).forEach((t) {
    sum += t;
    count++;
  });

  return count > 0 ? sum / count : 0;
}

// Функція, яка проходить по товарах і викликає callback, якщо ціна > 100
void checkPrices(List<double> prices, void Function(double) onExpensive) {
  for (var price in prices) {
    if (price > 100) {
      onExpensive(price); 
    }
  }
}

void main() {
  print(stats3(2, -5, 120));              
  print(dist(0, 0, 3, 4));                
  print(inRect(3, 3, 1, 1, 5, 5));        
  print(inCircle(2, 2, 0, 0, 3));        
  print(avgPositiveTemps([-2, 5, 0, -7, 3]));  
  List<double> prices = [49.9, 120.0, 15.5, 210.0, 99.9];
  checkPrices(prices, (price) {
    print("Товар за $price грн – запропонувати знижку!");
  });
}