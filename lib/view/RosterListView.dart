import 'dart:convert';

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

  const Photo({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );
  }
}

List<Photo> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}

Future<List<Photo>> fetchPhotos(client) async {
  final response =
      await client.get("https://jsonplaceholder.typicode.com/photos");

  print(response.data.toString());
  return parsePhotos(response.data);
}

class PhotosList extends StatelessWidget {
  const PhotosList({super.key, required this.photos});

  final List<Photo> photos;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return Image.network(photos[index].thumbnailUrl);
      },
    );
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

  final Dio _dio = Dio();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Photo>>(
      future: fetchPhotos(_dio),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          print(snapshot.error);
          return const Center(child: Text("An error has occurred!"));
        } else if (snapshot.hasData) {
          return PhotosList(photos: snapshot.data!);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
