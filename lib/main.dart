import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(FirstHomework());
}

class FirstHomework extends StatelessWidget {
  const FirstHomework({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("First Homework"),
        backgroundColor: Colors.red,
      ),
      body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "Tap + to increment",
              ),
              CounterWidget(),
              Text(
                "Tap - to decrement",
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          )),
    )));
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  State<CounterWidget> createState() => _CounterState();
}

class _CounterState extends State<CounterWidget> {
  double _counter = 0.0;
  @override
  void initState() {
    _counter = 0.0;
    super.initState();
  }

  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Container(
        alignment: Alignment.center,
        child: Row(
          children: [
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: incrementCounter,
            ),
            Text('${(_counter.round())}',
                style: TextStyle(
                  fontSize: 50,
                )),
            FloatingActionButton(
                child: Icon(Icons.remove), onPressed: decrementCounter)
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )));
  }
}
