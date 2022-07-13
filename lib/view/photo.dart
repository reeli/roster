import 'package:freezed_annotation/freezed_annotation.dart';

part '__generated__/photo.freezed.dart';
part '__generated__/photo.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    required int albumId,
    required int id,
    required String title,
    required String url,
    required String thumbnailUrl,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
