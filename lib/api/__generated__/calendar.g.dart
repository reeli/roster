// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../calendar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      self: json['self'] as bool,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'email': instance.email,
      'displayName': instance.displayName,
      'self': instance.self,
    };

_$_Date _$$_DateFromJson(Map<String, dynamic> json) => _$_Date(
      date: json['date'] as String,
    );

Map<String, dynamic> _$$_DateToJson(_$_Date instance) => <String, dynamic>{
      'date': instance.date,
    };

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      id: json['id'] as String,
      status: json['status'] as String,
      htmlLink: json['htmlLink'] as String?,
      created: json['created'] as String?,
      updated: json['updated'] as String?,
      summary: json['summary'] as String?,
      description: json['description'] as String?,
      creator: json['creator'] == null
          ? null
          : User.fromJson(json['creator'] as Map<String, dynamic>),
      organizer: json['organizer'] == null
          ? null
          : User.fromJson(json['organizer'] as Map<String, dynamic>),
      start: json['start'] == null
          ? null
          : Date.fromJson(json['start'] as Map<String, dynamic>),
      end: json['end'] == null
          ? null
          : Date.fromJson(json['end'] as Map<String, dynamic>),
      transparency: json['transparency'] as String?,
      visibility: json['visibility'] as String?,
      iCalUID: json['iCalUID'] as String?,
      sequence: json['sequence'] as String?,
      eventType: json['eventType'] as String?,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'id': instance.id,
      'status': instance.status,
      'htmlLink': instance.htmlLink,
      'created': instance.created,
      'updated': instance.updated,
      'summary': instance.summary,
      'description': instance.description,
      'creator': instance.creator,
      'organizer': instance.organizer,
      'start': instance.start,
      'end': instance.end,
      'transparency': instance.transparency,
      'visibility': instance.visibility,
      'iCalUID': instance.iCalUID,
      'sequence': instance.sequence,
      'eventType': instance.eventType,
    };

_$_Calendar _$$_CalendarFromJson(Map<String, dynamic> json) => _$_Calendar(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      summary: json['summary'] as String,
      updated: json['updated'] as String,
      timeZone: json['timeZone'] as String,
      accessRole: json['accessRole'] as String,
      defaultReminders: (json['defaultReminders'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      nextSyncToken: json['nextSyncToken'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CalendarToJson(_$_Calendar instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'summary': instance.summary,
      'updated': instance.updated,
      'timeZone': instance.timeZone,
      'accessRole': instance.accessRole,
      'defaultReminders': instance.defaultReminders,
      'nextSyncToken': instance.nextSyncToken,
      'items': instance.items,
    };
