import 'package:freezed_annotation/freezed_annotation.dart';

part '__generated__/calendar.freezed.dart';
part '__generated__/calendar.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String email,
    required String displayName,
    required bool self,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Date with _$Date {
  const factory Date({
    required String date,
  }) = _Date;

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    required String kind,
    required String etag,
    required String id,
    required String status,
    String? htmlLink,
    String? created,
    String? updated,
    String? summary,
    String? description,
    User? creator,
    User? organizer,
    Date? start,
    Date? end,
    String? transparency,
    String? visibility,
    String? iCalUID,
    String? sequence,
    String? eventType,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Calendar with _$Calendar {
  const factory Calendar({
    required String kind,
    required String etag,
    required String summary,
    required String updated,
    required String timeZone,
    required String accessRole,
    required List<String> defaultReminders,
    required String nextSyncToken,
    required List<Item> items,
  }) = _Calendar;

  factory Calendar.fromJson(Map<String, dynamic> json) =>
      _$CalendarFromJson(json);
}
