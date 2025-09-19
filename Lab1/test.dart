import 'dart:io';

void main() {
    stdout.write('Введіть загальну кількість ящиків: ');
    int totalBoxes = int.parse(stdin.readLineSync()!);

    while (totalBoxes > 0) {
        stdout.write('Введіть потрібну кількість ящиків: ');
        int reqiaredBoxes = int.parse(stdin.readLineSync()!);
            if (reqiaredBoxes <= totalBoxes) {
                totalBoxes -= reqiaredBoxes;
                print('Завантажено $reqiaredBoxes ящиків, залишилось $totalBoxes ящиків');
            } else {
                print('Залишилось $totalBoxes ящиків, завантажено $totalBoxes ящиків');
            }
        }
}