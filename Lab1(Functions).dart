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

// 3. Температури
int negTemps(List<int> arr) {
  int k = 0;
  for (int t in arr) {
    if (t < 0) k++;
  }
  return k;
}

double avgPosTemps(List<int> arr) {
  int k = 0;
  int sum = 0;
  for (int t in arr) {
    if (t > 0) {
      sum += t;
      k++;
    }
  }
  return k > 0 ? sum / k : 0;
}

void main() {
  print(stats3(2, -5, 120));              
  print(dist(0, 0, 3, 4));                
  print(inRect(3, 3, 1, 1, 5, 5));        
  print(inCircle(2, 2, 0, 0, 3));        
  print(negTemps([-2, 5, 0, -7, 3]));     
  print(avgPosTemps([-2, 5, 0, -7, 3]));  
}