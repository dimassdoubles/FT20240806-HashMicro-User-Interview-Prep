class Counter {
  Counter({this.value = 0});
  int value;

  void increment() {
    value += 1;
  }

  void decrement() {
    value -= 1;
  }
}
