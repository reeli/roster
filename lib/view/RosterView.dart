import 'package:flutter/material.dart';

class RosterView extends StatefulWidget {
  const RosterView({Key? key}) : super(key: key);

  @override
  State<RosterView> createState() => _RosterViewState();
}

class _RosterViewState extends State<RosterView> {
  final List<String> list = ["A", "B", "C", "D", "E"];
  final List<String> dates = [
    "2022-06-25",
    "2022-06-26",
    "today",
    "tomorrow",
    "2022-06-29"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (_, int index) {
          return ListTile(
            onTap: () => {},
            title: Row(
              children: [
                Text("item ${list[index]}"),
                Spacer(),
                Text(dates[index])
              ],
            ),
          );
        });
  }
}
