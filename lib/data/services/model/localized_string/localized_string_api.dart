import 'package:freezed_annotation/freezed_annotation.dart';

part 'localized_string_api.freezed.dart';
part 'localized_string_api.g.dart';

@freezed
abstract class LocalizedStringApi with _$LocalizedStringApi {
  const factory LocalizedStringApi({required String? en, required String? uk}) = _LocalizedStringApi;

  factory LocalizedStringApi.fromJson(Map<String, dynamic> json) =>
      _$LocalizedStringApiFromJson(json);
}