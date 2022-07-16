import 'package:flutter_test/flutter_test.dart';
import 'package:roster/api/calendar.dart';
import 'package:roster/api/fetch_calendar.dart';

void main() {
  var json = {
    "kind": "calendar#events",
    "etag": "p33io71slo3ufg0g",
    "summary": "Holidays in China",
    "updated": "2022-07-14T17:01:39.000Z",
    "timeZone": "UTC",
    "accessRole": "reader",
    "defaultReminders": [],
    "nextSyncToken": "CMDFktft-PgCEAAYASCelvfaAQ==",
    "items": [
      {
        "kind": "calendar#event",
        "etag": "\"3259960203388000\"",
        "id": "20210101_puplc3j986a3prv4892kq3sh4k",
        "status": "confirmed",
        "htmlLink":
            "https://www.google.com/calendar/event?eid=MjAyMTAxMDFfcHVwbGMzajk4NmEzcHJ2NDg5MmtxM3NoNGsgZW4uY2hpbmEjaG9saWRheUB2",
        "created": "2021-08-26T12:15:01.000Z",
        "updated": "2021-08-26T12:15:01.694Z",
        "summary": "New Year's Day",
        "description": "Public holiday",
        "creator": {
          "email": "en.china#holiday@group.v.calendar.google.com",
          "displayName": "Holidays in China",
          "self": true
        },
        "start": {"date": "2021-01-01"},
        "end": {"date": "2021-01-02"},
      },
      {
        "kind": "calendar#event",
        "etag": "3259960203388000",
        "id": "20210101_puplc3j986a3prv4892kq3sh4k",
        "status": "confirmed",
        "htmlLink":
            "https://www.google.com/calendar/event?eid=MjAyMTAxMDFfcHVwbGMzajk4NmEzcHJ2NDg5MmtxM3NoNGsgZW4uY2hpbmEjaG9saWRheUB2",
        "created": "2021-08-26T12:15:01.000Z",
        "updated": "2021-08-26T12:15:01.694Z",
        "summary": "New Year's Day",
        "description": "Chinese Valentine's Day",
        "creator": {
          "email": "en.china#holiday@group.v.calendar.google.com",
          "displayName": "Holidays in China",
          "self": true
        },
        "start": {"date": "2021-02-14"},
        "end": {"date": "2021-02-14"},
      }
    ],
  };

  group("isPublicHoliday", () {
    test("should return true if given date is public holiday", () {
      expect(
          isPublicHoliday(DateTime(2021, 1, 1), Calendar.fromJson(json)), true);
    });

    test("should return false if given date is not public holiday", () {
      expect(isPublicHoliday(DateTime(2021, 2, 14), Calendar.fromJson(json)),
          false);
    });
  });

  group("getHolidayName", () {
    test("should return public holiday name if given date is a public holiday",
        () {
      var holiday = getHolidayNameAndCountry(
          DateTime(2021, 1, 1), Calendar.fromJson(json));

      expect(holiday?.country, "China");
      expect(holiday?.name, "New Year's Day");
    });

    test("should return null if given date is not a public holiday", () {
      expect(
          getHolidayNameAndCountry(
              DateTime(2021, 2, 14), Calendar.fromJson(json)),
          null);
    });
  });
}
