import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'photo.dart';

class RosterListView extends StatefulWidget {
  const RosterListView({Key? key}) : super(key: key);

  @override
  State<RosterListView> createState() => _RosterListViewState();
}

Future<List<Photo>> fetchPhotos(Dio client) async {
  final response =
      await client.get("https://jsonplaceholder.typicode.com/photos");

  return (response.data as List<dynamic>)
      .map((e) => Photo.fromJson(e))
      .toList();
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
