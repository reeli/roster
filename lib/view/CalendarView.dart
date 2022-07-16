import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:roster/api/calendar.dart';
import 'package:roster/api/fetchCalendar.dart';

class CalendarItemView extends StatelessWidget {
  const CalendarItemView({super.key, required this.calendar});

  final Calendar calendar;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: calendar.items.length,
      itemBuilder: (context, index) {
        return Text(calendar.summary);
      },
    );
  }
}

class CalendarView extends StatelessWidget {
  CalendarView({Key? key}) : super(key: key);

  final Dio _dio = Dio();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchCalendar(_dio),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          print(snapshot.error);
          return const Center(child: Text("An error has occurred!"));
        } else if (snapshot.hasData) {
          return CalendarItemView(calendar: snapshot.data!);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
