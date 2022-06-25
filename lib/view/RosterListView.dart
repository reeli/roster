import 'package:flutter/material.dart';

class RosterListView extends StatefulWidget {
  const RosterListView({Key? key}) : super(key: key);

  @override
  State<RosterListView> createState() => _RosterListViewState();
}

class _RosterListViewState extends State<RosterListView> {
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
