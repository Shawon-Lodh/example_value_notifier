import 'package:flutter/material.dart';

class ValueNotifierExample1 extends StatefulWidget {

  @override
  _ValueNotifierExample1State createState() => _ValueNotifierExample1State();
}

class _ValueNotifierExample1State extends State<ValueNotifierExample1> {

  ValueNotifier<int> _number = ValueNotifier<int>(0);

  void _incrementValueOfNumber(){
    _number.value++;
  }

  @override
  void dispose() {
    _number.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Value Notifier Builder Example"),
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: _number,
          builder: (context, value, child) {
            return Text("Final Number is : $value");
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _incrementValueOfNumber(),
      ),
    );
  }
}
