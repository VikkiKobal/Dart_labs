import 'dart:io';
import 'dart:math';

void checkNumberInRange(int userNumber) {
  Random rnd = Random();
  
  int start = rnd.nextInt(100) + 1; 
  int end = rnd.nextInt(100) + 1;   
  
  if (start > end) {
    int temp = start;
    start = end;
    end = temp;
  }

  if ((userNumber >= start && userNumber <= end) ||
      (userNumber >= start - 10 && userNumber < start) ||
      (userNumber <= end + 10 && userNumber > end)) {
    print('Виграш! Проміжок: [$start, $end]');
  } else {
    print('Програш. Проміжок: [$start, $end]');
  }
}

void main() {
  stdout.write('Введіть число: ');
  int num = int.parse(stdin.readLineSync()!);
  checkNumberInRange(num);
}


