import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:roster/api/calendar.dart';

var areaChina = "en.china";

Future<Calendar> fetchCalendar(Dio client, String area) async {
  final response = await client.get(
      "https://www.googleapis.com/calendar/v3/calendars/$area%23holiday@group.v.calendar.google.com/events?key=AIzaSyD8ELd8w9CiownGyac_mdlaMrnKOHiArM4");

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

class Holiday {
  String country;
  String name;

  Holiday(this.country, this.name);
}

Holiday? getHolidayNameAndCountry(DateTime date, Calendar calendar) {
  try {
    var holiday = findPublicHoliday(date, calendar);
    var country = calendar.summary.split(" ")[2];

    return Holiday(country, holiday.summary);
  } catch (e) {
    return null;
  }
}
