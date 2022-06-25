import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:roster/view/HomeView.dart';

void main() {
  return runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting("en_US", "");
    return const MaterialApp(title: "hello", home: HomePage());
  }
}
