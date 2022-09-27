import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CounterScreen'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Número de Pulsaciones', style: fontSize30),
            Text('$counter', style: fontSize30)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(
          increaseFn: increase, decreaseFn: decrease, resetFn: reset),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => decreaseFn(),
          child: const Icon(Icons.exposure_minus_1_outlined),
          // onPressed: () => setState(() => counter++),
          // onPressed: () {
          //   counter--;
          //   setState(() {});
          // },
        ),
        // const SizedBox(width: 20),
        FloatingActionButton(
          onPressed: () => resetFn(),
          child: const Icon(Icons.exposure_outlined),
          // onPressed: () => setState(() => counter = 0),
          // onPressed: () {
          //   counter = 0;
          //   setState(() {});
          // },
        ),
        // const SizedBox(width: 20),
        FloatingActionButton(
          onPressed: () => increaseFn(),
          child: const Icon(Icons.exposure_plus_1_outlined),
          // onPressed: () => setState(() => counter--),
          // onPressed: () {
          //   counter++;
          //   setState(() {});
          // },
        ),
      ],
    );
  }
}
