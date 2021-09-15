import 'package:example_value_notifier/ValueNotifierExample1.dart';
import 'package:example_value_notifier/ValueNotifierExample2.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ValueNotifierExample1(),
    );
  }
}
