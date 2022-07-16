import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:roster/api/calendar.dart';

Future<Calendar> fetchCalendar(Dio client) async {
  final response = await client.get(
      "https://www.googleapis.com/calendar/v3/calendars/en.china%23holiday@group.v.calendar.google.com/events?key=AIzaSyD8ELd8w9CiownGyac_mdlaMrnKOHiArM4");

  return Calendar.fromJson(response.data);
}

findPublicHoliday(DateTime date, Calendar calendar) {
  var dateStr = DateFormat("yyyy-MM-dd").format(date);
  return calendar.items.firstWhere((element) =>
      element.start?.date == dateStr &&
      element.description == "Public holiday");
}

bool isPublicHoliday(DateTime date, Calendar calendar) {
  try {
    findPublicHoliday(date, calendar);
    return true;
  } catch (e) {
    return false;
  }
}

String getHolidayName(DateTime date, Calendar calendar) {
  try {
    var holiday = findPublicHoliday(date, calendar);
    return holiday.summary;
  } catch (e) {
    return "";
  }
}
