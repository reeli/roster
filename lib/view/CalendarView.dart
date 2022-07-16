import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:roster/api/calendar.dart';
import 'package:roster/api/fetch_calendar.dart';

class CalendarItemView extends StatelessWidget {
  const CalendarItemView({super.key, required this.calendar});

  final Calendar calendar;

  @override
  Widget build(BuildContext context) {
    var now = DateTime(2022, 1, 1);
    var holiday = isPublicHoliday(now, calendar)
        ? getHolidayNameAndCountry(now, calendar)
        : Holiday("Empty", "Today is not holiday");

    return Row(
      children: [
        Text(holiday!.country),
        Text(holiday.name),
      ],
    );
  }
}

class CalendarView extends StatelessWidget {
  CalendarView({Key? key}) : super(key: key);

  final Dio _dio = Dio();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchCalendar(_dio, areaChina),
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
