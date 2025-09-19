import 'package:freezed_annotation/freezed_annotation.dart';

part 'path.freezed.dart';
part 'path.g.dart';

@freezed
abstract class Path with _$Path {
  const factory Path({
    required int id,
    required String name,
    required List<int> paintings,
  }) = _Path;

  factory Path.fromJson(Map<String, dynamic> json) => _$PathFromJson(json);
}
