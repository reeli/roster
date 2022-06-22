import 'package:flutter/material.dart';
import 'package:roster/view/HomeView.dart';

void main() {
  return runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "hello", home: HomePage());
  }
}

