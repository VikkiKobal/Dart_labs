import 'dart:io';

// 1. День тижня за номером
String dayOfWeek(int n) {
  const days = ['Понеділок', 'Вівторок', 'Середа', 'Четвер', 'П\'ятниця', 'Субота', 'Неділя'];
  if (n < 1 || n > 7) return 'Невірний номер дня';
  return days[n - 1];
}

// 2. Тип багатокутника за кількістю сторін
String polygonType(int sides) {
  switch (sides) {
    case 3: return 'трикутник';
    case 4: return 'чотирикутник';
    case 5: return 'п\'ятикутник';
    case 6: return 'шестикутник';
    case 7: return 'семикутник';
    case 8: return 'восьмикутник';
    case 9: return 'дев\'ятикутник';
    case 10: return 'десятикутник';
    default: return 'інший багатокутник';
  }
}

// 3. Обчислення тарифу
double servicePayment(String service, double amount) {
  double rate;

  switch (service.toLowerCase()) {
    case 'electricity':
      rate = 3.60; 
      break;
    case 'water':
      rate = 26.0; 
      break;
    case 'gas':
      rate = 12.5; 
      break;
    case 'internet':
      rate = 150.0; 
      break;
    default:
      return -1; 
  }

  return amount * rate;
}
// 4. Сезон за місяцем
String seasonOfYear(int month) {
  switch (month) {
    case 12:
    case 1:
    case 2: return 'Зима';
    case 3:
    case 4:
    case 5: return 'Весна';
    case 6:
    case 7:
    case 8: return 'Літо';
    case 9:
    case 10:
    case 11: return 'Осінь';
    default: return 'Невірний місяць';
  }
}

// 5. Голосна чи приголосна
String vowelOrConsonant(String letter) {
  const vowels = 'аеєиіїоуюяAEЄИІЇОУЮЯ';
  if (letter.length != 1) return 'Введіть одну букву';
  if (!RegExp(r'^[а-яА-Яa-zA-Z]$').hasMatch(letter)) return 'Не літера';
  return vowels.contains(letter) ? 'Голосна' : 'Приголосна';
}

// 6. Тип ноутбука за кодом
String laptopType(String code) {
  switch (code) {
    case '12345': return 'Lenovo';
    case '54321': return 'Asus';
    case '11111': return 'HP';
    case '22222': return 'Dell';
    default: return 'Невідомий ноутбук';
  }
}

void main() {
  print(dayOfWeek(3));            
  print(polygonType(5));           
  print(servicePayment('electricity', 50));
  print(seasonOfYear(7));          
  print(vowelOrConsonant('а'));    
  print(laptopType('12345'));      
}
