import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class RosterListView extends StatefulWidget {
  const RosterListView({Key? key}) : super(key: key);

  @override
  State<RosterListView> createState() => _RosterListViewState();
}

class Photo {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  const Photo(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
        albumId: json["albumId"] as int,
        id: json["id"] as int,
        title: json["title"] as String,
        url: json["url"] as String,
        thumbnailUrl: json["thumbnailUrl"] as String);
  }
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

  void getHttp() async {
    print("hello");
    try {
      var options = BaseOptions(
        baseUrl: 'https://jsonplaceholder.typicode.com',
        // connectTimeout: 5000,
        // receiveTimeout: 3000,
      );
      var dio = Dio(options);
      var response = await dio.get(
        "/photos",
      );
      print(response.data.toString());
      print("success");
    } catch (e) {
      print("error");
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getHttp();
  }

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
