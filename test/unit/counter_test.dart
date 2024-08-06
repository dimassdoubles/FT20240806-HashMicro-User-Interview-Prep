import 'package:flutter_test/flutter_test.dart';
import 'package:user_interview_prep/counter_test.dart';

void main() {
  group("counter test", () {
    final counter = Counter();

    test("increment", () {
      counter.increment();
      expect(counter.value, 1);
    });
    test("decrement", () {
      counter.decrement();
      expect(counter.value, 0);
    });
  });
}
