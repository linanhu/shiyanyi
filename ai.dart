void main() {
  int n = 10; // 要计算的斐波那契数列的数字个数
  List<int> fibonacciSequence = calculateFibonacciSequence(n);
  print('斐波那契数列的前 $n 个数字为：$fibonacciSequence');
}

List<int> calculateFibonacciSequence(int n) {
  List<int> sequence = [];
  if (n <= 0) return sequence;

  sequence.add(0);
  if (n == 1) return sequence;

  sequence.add(1);
  if (n == 2) return sequence;

  for (int i = 2; i < n; i++) {
    int nextNumber = sequence[i - 1] + sequence[i - 2];
    sequence.add(nextNumber);
  }

  return sequence;
}
