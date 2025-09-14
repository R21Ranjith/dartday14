import 'dart:async';

void main() async {
  print("Process started...");

  // Simulate a delay of 3 seconds
  await Future.delayed(Duration(seconds: 3), () {
    print("3 seconds delay completed!");
  });

  print("Process finished.");
}
