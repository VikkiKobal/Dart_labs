import 'dart:math';

int bubbleSortCount(List<int> arr) {
  int n = arr.length;
  int swaps = 0;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        swaps++;
      }
    }
  }
  return swaps;
}

void main() {
  Random rnd = Random();
  List<int> nums = List.generate(30, (_) => rnd.nextInt(100)); 

  print("Original: $nums");
  int swapCount = bubbleSortCount(nums);
  print("Sorted:   $nums");
  print("Swaps: $swapCount");
}
