import 'dart:async';

Stream<int> counterStream(int maxCount) async* {
  for (int i = 1; i <= maxCount; i++) {
    await Future.delayed(Duration(seconds: 1)); // delay before next number
    yield i; // send value into the stream
  }
}

void main() async {
  print("Counter starting...");

  await for (int value in counterStream(5)) {
    print("Counter: $value");
  }

  print("Counter finished!");
}
