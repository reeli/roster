import 'package:dio/dio.dart';
import 'package:roster/api/calendar.dart';

Future<Calendar> fetchCalendar(Dio client) async {
  final response = await client.get(
      "https://www.googleapis.com/calendar/v3/calendars/en.china%23holiday@group.v.calendar.google.com/events?key=AIzaSyD8ELd8w9CiownGyac_mdlaMrnKOHiArM4");

  return Calendar.fromJson(response.data);
}
