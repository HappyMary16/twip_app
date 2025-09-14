import 'package:freezed_annotation/freezed_annotation.dart';

part 'route.freezed.dart';

part 'route.g.dart';

@freezed
abstract class Route with _$Route {
  const factory Route({
    required int id,
    required String name,
    required List<int> paintings,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}