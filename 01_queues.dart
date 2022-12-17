import 'dart:collection';

void main() {
  // Can be used when having a numbers or values sequence
  Queue<int> cola = new Queue();

  cola.addAll([10, 20, 30, 40, 50]);

  Iterator i = cola.iterator;

  while (i.moveNext()) {
    print(i.current);
  }
}
