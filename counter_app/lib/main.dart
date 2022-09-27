import 'package:flutter/material.dart';

// import 'package:counter_app/screens/home_sreen.dart';
import 'package:counter_app/screens/counter_sreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // debugShowCheckedModeBanner: false, home: HomeScreen());
        debugShowCheckedModeBanner: false,
        home: CounterScreen());
  }
}
