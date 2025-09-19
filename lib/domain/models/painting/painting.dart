import 'package:freezed_annotation/freezed_annotation.dart';

part 'painting.freezed.dart';
part 'painting.g.dart';

@freezed
abstract class Painting with _$Painting {
  const factory Painting({required int id, required String name}) = _Painting;

  factory Painting.fromJson(Map<String, dynamic> json) =>
      _$PaintingFromJson(json);
}
