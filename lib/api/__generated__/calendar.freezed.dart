// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../calendar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  bool get self => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({String email, String displayName, bool self});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? displayName = freezed,
    Object? self = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      self: self == freezed
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call({String email, String displayName, bool self});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? email = freezed,
    Object? displayName = freezed,
    Object? self = freezed,
  }) {
    return _then(_$_User(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      self: self == freezed
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.email, required this.displayName, required this.self});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String email;
  @override
  final String displayName;
  @override
  final bool self;

  @override
  String toString() {
    return 'User(email: $email, displayName: $displayName, self: $self)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.self, self));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(self));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String email,
      required final String displayName,
      required final bool self}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  bool get self => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

Date _$DateFromJson(Map<String, dynamic> json) {
  return _Date.fromJson(json);
}

/// @nodoc
mixin _$Date {
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateCopyWith<Date> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateCopyWith<$Res> {
  factory $DateCopyWith(Date value, $Res Function(Date) then) =
      _$DateCopyWithImpl<$Res>;
  $Res call({String date});
}

/// @nodoc
class _$DateCopyWithImpl<$Res> implements $DateCopyWith<$Res> {
  _$DateCopyWithImpl(this._value, this._then);

  final Date _value;
  // ignore: unused_field
  final $Res Function(Date) _then;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DateCopyWith<$Res> implements $DateCopyWith<$Res> {
  factory _$$_DateCopyWith(_$_Date value, $Res Function(_$_Date) then) =
      __$$_DateCopyWithImpl<$Res>;
  @override
  $Res call({String date});
}

/// @nodoc
class __$$_DateCopyWithImpl<$Res> extends _$DateCopyWithImpl<$Res>
    implements _$$_DateCopyWith<$Res> {
  __$$_DateCopyWithImpl(_$_Date _value, $Res Function(_$_Date) _then)
      : super(_value, (v) => _then(v as _$_Date));

  @override
  _$_Date get _value => super._value as _$_Date;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$_Date(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Date implements _Date {
  const _$_Date({required this.date});

  factory _$_Date.fromJson(Map<String, dynamic> json) => _$$_DateFromJson(json);

  @override
  final String date;

  @override
  String toString() {
    return 'Date(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Date &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$_DateCopyWith<_$_Date> get copyWith =>
      __$$_DateCopyWithImpl<_$_Date>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DateToJson(this);
  }
}

abstract class _Date implements Date {
  const factory _Date({required final String date}) = _$_Date;

  factory _Date.fromJson(Map<String, dynamic> json) = _$_Date.fromJson;

  @override
  String get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DateCopyWith<_$_Date> get copyWith => throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String get kind => throw _privateConstructorUsedError;
  String get etag => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get htmlLink => throw _privateConstructorUsedError;
  String? get created => throw _privateConstructorUsedError;
  String? get updated => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  User? get creator => throw _privateConstructorUsedError;
  User? get organizer => throw _privateConstructorUsedError;
  Date? get start => throw _privateConstructorUsedError;
  Date? get end => throw _privateConstructorUsedError;
  String? get transparency => throw _privateConstructorUsedError;
  String? get visibility => throw _privateConstructorUsedError;
  String? get iCalUID => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  String? get eventType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {String kind,
      String etag,
      String id,
      String status,
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
      int? sequence,
      String? eventType});

  $UserCopyWith<$Res>? get creator;
  $UserCopyWith<$Res>? get organizer;
  $DateCopyWith<$Res>? get start;
  $DateCopyWith<$Res>? get end;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? kind = freezed,
    Object? etag = freezed,
    Object? id = freezed,
    Object? status = freezed,
    Object? htmlLink = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? summary = freezed,
    Object? description = freezed,
    Object? creator = freezed,
    Object? organizer = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? transparency = freezed,
    Object? visibility = freezed,
    Object? iCalUID = freezed,
    Object? sequence = freezed,
    Object? eventType = freezed,
  }) {
    return _then(_value.copyWith(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      htmlLink: htmlLink == freezed
          ? _value.htmlLink
          : htmlLink // ignore: cast_nullable_to_non_nullable
              as String?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User?,
      organizer: organizer == freezed
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as User?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as Date?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as Date?,
      transparency: transparency == freezed
          ? _value.transparency
          : transparency // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      iCalUID: iCalUID == freezed
          ? _value.iCalUID
          : iCalUID // ignore: cast_nullable_to_non_nullable
              as String?,
      sequence: sequence == freezed
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      eventType: eventType == freezed
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get creator {
    if (_value.creator == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.creator!, (value) {
      return _then(_value.copyWith(creator: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get organizer {
    if (_value.organizer == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.organizer!, (value) {
      return _then(_value.copyWith(organizer: value));
    });
  }

  @override
  $DateCopyWith<$Res>? get start {
    if (_value.start == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_value.start!, (value) {
      return _then(_value.copyWith(start: value));
    });
  }

  @override
  $DateCopyWith<$Res>? get end {
    if (_value.end == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_value.end!, (value) {
      return _then(_value.copyWith(end: value));
    });
  }
}

/// @nodoc
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String kind,
      String etag,
      String id,
      String status,
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
      int? sequence,
      String? eventType});

  @override
  $UserCopyWith<$Res>? get creator;
  @override
  $UserCopyWith<$Res>? get organizer;
  @override
  $DateCopyWith<$Res>? get start;
  @override
  $DateCopyWith<$Res>? get end;
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, (v) => _then(v as _$_Item));

  @override
  _$_Item get _value => super._value as _$_Item;

  @override
  $Res call({
    Object? kind = freezed,
    Object? etag = freezed,
    Object? id = freezed,
    Object? status = freezed,
    Object? htmlLink = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? summary = freezed,
    Object? description = freezed,
    Object? creator = freezed,
    Object? organizer = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? transparency = freezed,
    Object? visibility = freezed,
    Object? iCalUID = freezed,
    Object? sequence = freezed,
    Object? eventType = freezed,
  }) {
    return _then(_$_Item(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      htmlLink: htmlLink == freezed
          ? _value.htmlLink
          : htmlLink // ignore: cast_nullable_to_non_nullable
              as String?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User?,
      organizer: organizer == freezed
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as User?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as Date?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as Date?,
      transparency: transparency == freezed
          ? _value.transparency
          : transparency // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      iCalUID: iCalUID == freezed
          ? _value.iCalUID
          : iCalUID // ignore: cast_nullable_to_non_nullable
              as String?,
      sequence: sequence == freezed
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      eventType: eventType == freezed
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  const _$_Item(
      {required this.kind,
      required this.etag,
      required this.id,
      required this.status,
      this.htmlLink,
      this.created,
      this.updated,
      this.summary,
      this.description,
      this.creator,
      this.organizer,
      this.start,
      this.end,
      this.transparency,
      this.visibility,
      this.iCalUID,
      this.sequence,
      this.eventType});

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  final String kind;
  @override
  final String etag;
  @override
  final String id;
  @override
  final String status;
  @override
  final String? htmlLink;
  @override
  final String? created;
  @override
  final String? updated;
  @override
  final String? summary;
  @override
  final String? description;
  @override
  final User? creator;
  @override
  final User? organizer;
  @override
  final Date? start;
  @override
  final Date? end;
  @override
  final String? transparency;
  @override
  final String? visibility;
  @override
  final String? iCalUID;
  @override
  final int? sequence;
  @override
  final String? eventType;

  @override
  String toString() {
    return 'Item(kind: $kind, etag: $etag, id: $id, status: $status, htmlLink: $htmlLink, created: $created, updated: $updated, summary: $summary, description: $description, creator: $creator, organizer: $organizer, start: $start, end: $end, transparency: $transparency, visibility: $visibility, iCalUID: $iCalUID, sequence: $sequence, eventType: $eventType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            const DeepCollectionEquality().equals(other.kind, kind) &&
            const DeepCollectionEquality().equals(other.etag, etag) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.htmlLink, htmlLink) &&
            const DeepCollectionEquality().equals(other.created, created) &&
            const DeepCollectionEquality().equals(other.updated, updated) &&
            const DeepCollectionEquality().equals(other.summary, summary) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.creator, creator) &&
            const DeepCollectionEquality().equals(other.organizer, organizer) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality()
                .equals(other.transparency, transparency) &&
            const DeepCollectionEquality()
                .equals(other.visibility, visibility) &&
            const DeepCollectionEquality().equals(other.iCalUID, iCalUID) &&
            const DeepCollectionEquality().equals(other.sequence, sequence) &&
            const DeepCollectionEquality().equals(other.eventType, eventType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kind),
      const DeepCollectionEquality().hash(etag),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(htmlLink),
      const DeepCollectionEquality().hash(created),
      const DeepCollectionEquality().hash(updated),
      const DeepCollectionEquality().hash(summary),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(creator),
      const DeepCollectionEquality().hash(organizer),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(transparency),
      const DeepCollectionEquality().hash(visibility),
      const DeepCollectionEquality().hash(iCalUID),
      const DeepCollectionEquality().hash(sequence),
      const DeepCollectionEquality().hash(eventType));

  @JsonKey(ignore: true)
  @override
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(this);
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {required final String kind,
      required final String etag,
      required final String id,
      required final String status,
      final String? htmlLink,
      final String? created,
      final String? updated,
      final String? summary,
      final String? description,
      final User? creator,
      final User? organizer,
      final Date? start,
      final Date? end,
      final String? transparency,
      final String? visibility,
      final String? iCalUID,
      final int? sequence,
      final String? eventType}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String get kind => throw _privateConstructorUsedError;
  @override
  String get etag => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String? get htmlLink => throw _privateConstructorUsedError;
  @override
  String? get created => throw _privateConstructorUsedError;
  @override
  String? get updated => throw _privateConstructorUsedError;
  @override
  String? get summary => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  User? get creator => throw _privateConstructorUsedError;
  @override
  User? get organizer => throw _privateConstructorUsedError;
  @override
  Date? get start => throw _privateConstructorUsedError;
  @override
  Date? get end => throw _privateConstructorUsedError;
  @override
  String? get transparency => throw _privateConstructorUsedError;
  @override
  String? get visibility => throw _privateConstructorUsedError;
  @override
  String? get iCalUID => throw _privateConstructorUsedError;
  @override
  int? get sequence => throw _privateConstructorUsedError;
  @override
  String? get eventType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}

Calendar _$CalendarFromJson(Map<String, dynamic> json) {
  return _Calendar.fromJson(json);
}

/// @nodoc
mixin _$Calendar {
  String get kind => throw _privateConstructorUsedError;
  String get etag => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String get updated => throw _privateConstructorUsedError;
  String get timeZone => throw _privateConstructorUsedError;
  String get accessRole => throw _privateConstructorUsedError;
  List<String> get defaultReminders => throw _privateConstructorUsedError;
  String get nextSyncToken => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarCopyWith<Calendar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarCopyWith<$Res> {
  factory $CalendarCopyWith(Calendar value, $Res Function(Calendar) then) =
      _$CalendarCopyWithImpl<$Res>;
  $Res call(
      {String kind,
      String etag,
      String summary,
      String updated,
      String timeZone,
      String accessRole,
      List<String> defaultReminders,
      String nextSyncToken,
      List<Item> items});
}

/// @nodoc
class _$CalendarCopyWithImpl<$Res> implements $CalendarCopyWith<$Res> {
  _$CalendarCopyWithImpl(this._value, this._then);

  final Calendar _value;
  // ignore: unused_field
  final $Res Function(Calendar) _then;

  @override
  $Res call({
    Object? kind = freezed,
    Object? etag = freezed,
    Object? summary = freezed,
    Object? updated = freezed,
    Object? timeZone = freezed,
    Object? accessRole = freezed,
    Object? defaultReminders = freezed,
    Object? nextSyncToken = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
      timeZone: timeZone == freezed
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
      accessRole: accessRole == freezed
          ? _value.accessRole
          : accessRole // ignore: cast_nullable_to_non_nullable
              as String,
      defaultReminders: defaultReminders == freezed
          ? _value.defaultReminders
          : defaultReminders // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nextSyncToken: nextSyncToken == freezed
          ? _value.nextSyncToken
          : nextSyncToken // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
abstract class _$$_CalendarCopyWith<$Res> implements $CalendarCopyWith<$Res> {
  factory _$$_CalendarCopyWith(
          _$_Calendar value, $Res Function(_$_Calendar) then) =
      __$$_CalendarCopyWithImpl<$Res>;
  @override
  $Res call(
      {String kind,
      String etag,
      String summary,
      String updated,
      String timeZone,
      String accessRole,
      List<String> defaultReminders,
      String nextSyncToken,
      List<Item> items});
}

/// @nodoc
class __$$_CalendarCopyWithImpl<$Res> extends _$CalendarCopyWithImpl<$Res>
    implements _$$_CalendarCopyWith<$Res> {
  __$$_CalendarCopyWithImpl(
      _$_Calendar _value, $Res Function(_$_Calendar) _then)
      : super(_value, (v) => _then(v as _$_Calendar));

  @override
  _$_Calendar get _value => super._value as _$_Calendar;

  @override
  $Res call({
    Object? kind = freezed,
    Object? etag = freezed,
    Object? summary = freezed,
    Object? updated = freezed,
    Object? timeZone = freezed,
    Object? accessRole = freezed,
    Object? defaultReminders = freezed,
    Object? nextSyncToken = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_Calendar(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
      timeZone: timeZone == freezed
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
      accessRole: accessRole == freezed
          ? _value.accessRole
          : accessRole // ignore: cast_nullable_to_non_nullable
              as String,
      defaultReminders: defaultReminders == freezed
          ? _value._defaultReminders
          : defaultReminders // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nextSyncToken: nextSyncToken == freezed
          ? _value.nextSyncToken
          : nextSyncToken // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Calendar implements _Calendar {
  const _$_Calendar(
      {required this.kind,
      required this.etag,
      required this.summary,
      required this.updated,
      required this.timeZone,
      required this.accessRole,
      required final List<String> defaultReminders,
      required this.nextSyncToken,
      required final List<Item> items})
      : _defaultReminders = defaultReminders,
        _items = items;

  factory _$_Calendar.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarFromJson(json);

  @override
  final String kind;
  @override
  final String etag;
  @override
  final String summary;
  @override
  final String updated;
  @override
  final String timeZone;
  @override
  final String accessRole;
  final List<String> _defaultReminders;
  @override
  List<String> get defaultReminders {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_defaultReminders);
  }

  @override
  final String nextSyncToken;
  final List<Item> _items;
  @override
  List<Item> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'Calendar(kind: $kind, etag: $etag, summary: $summary, updated: $updated, timeZone: $timeZone, accessRole: $accessRole, defaultReminders: $defaultReminders, nextSyncToken: $nextSyncToken, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Calendar &&
            const DeepCollectionEquality().equals(other.kind, kind) &&
            const DeepCollectionEquality().equals(other.etag, etag) &&
            const DeepCollectionEquality().equals(other.summary, summary) &&
            const DeepCollectionEquality().equals(other.updated, updated) &&
            const DeepCollectionEquality().equals(other.timeZone, timeZone) &&
            const DeepCollectionEquality()
                .equals(other.accessRole, accessRole) &&
            const DeepCollectionEquality()
                .equals(other._defaultReminders, _defaultReminders) &&
            const DeepCollectionEquality()
                .equals(other.nextSyncToken, nextSyncToken) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kind),
      const DeepCollectionEquality().hash(etag),
      const DeepCollectionEquality().hash(summary),
      const DeepCollectionEquality().hash(updated),
      const DeepCollectionEquality().hash(timeZone),
      const DeepCollectionEquality().hash(accessRole),
      const DeepCollectionEquality().hash(_defaultReminders),
      const DeepCollectionEquality().hash(nextSyncToken),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_CalendarCopyWith<_$_Calendar> get copyWith =>
      __$$_CalendarCopyWithImpl<_$_Calendar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarToJson(this);
  }
}

abstract class _Calendar implements Calendar {
  const factory _Calendar(
      {required final String kind,
      required final String etag,
      required final String summary,
      required final String updated,
      required final String timeZone,
      required final String accessRole,
      required final List<String> defaultReminders,
      required final String nextSyncToken,
      required final List<Item> items}) = _$_Calendar;

  factory _Calendar.fromJson(Map<String, dynamic> json) = _$_Calendar.fromJson;

  @override
  String get kind => throw _privateConstructorUsedError;
  @override
  String get etag => throw _privateConstructorUsedError;
  @override
  String get summary => throw _privateConstructorUsedError;
  @override
  String get updated => throw _privateConstructorUsedError;
  @override
  String get timeZone => throw _privateConstructorUsedError;
  @override
  String get accessRole => throw _privateConstructorUsedError;
  @override
  List<String> get defaultReminders => throw _privateConstructorUsedError;
  @override
  String get nextSyncToken => throw _privateConstructorUsedError;
  @override
  List<Item> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarCopyWith<_$_Calendar> get copyWith =>
      throw _privateConstructorUsedError;
}
