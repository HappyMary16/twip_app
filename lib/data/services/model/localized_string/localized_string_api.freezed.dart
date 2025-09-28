// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localized_string_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocalizedStringApi {

 String? get en; String? get uk;
/// Create a copy of LocalizedStringApi
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalizedStringApiCopyWith<LocalizedStringApi> get copyWith => _$LocalizedStringApiCopyWithImpl<LocalizedStringApi>(this as LocalizedStringApi, _$identity);

  /// Serializes this LocalizedStringApi to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalizedStringApi&&(identical(other.en, en) || other.en == en)&&(identical(other.uk, uk) || other.uk == uk));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,en,uk);

@override
String toString() {
  return 'LocalizedStringApi(en: $en, uk: $uk)';
}


}

/// @nodoc
abstract mixin class $LocalizedStringApiCopyWith<$Res>  {
  factory $LocalizedStringApiCopyWith(LocalizedStringApi value, $Res Function(LocalizedStringApi) _then) = _$LocalizedStringApiCopyWithImpl;
@useResult
$Res call({
 String? en, String? uk
});




}
/// @nodoc
class _$LocalizedStringApiCopyWithImpl<$Res>
    implements $LocalizedStringApiCopyWith<$Res> {
  _$LocalizedStringApiCopyWithImpl(this._self, this._then);

  final LocalizedStringApi _self;
  final $Res Function(LocalizedStringApi) _then;

/// Create a copy of LocalizedStringApi
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? en = freezed,Object? uk = freezed,}) {
  return _then(_self.copyWith(
en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,uk: freezed == uk ? _self.uk : uk // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalizedStringApi].
extension LocalizedStringApiPatterns on LocalizedStringApi {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalizedStringApi value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalizedStringApi() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalizedStringApi value)  $default,){
final _that = this;
switch (_that) {
case _LocalizedStringApi():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalizedStringApi value)?  $default,){
final _that = this;
switch (_that) {
case _LocalizedStringApi() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? en,  String? uk)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalizedStringApi() when $default != null:
return $default(_that.en,_that.uk);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? en,  String? uk)  $default,) {final _that = this;
switch (_that) {
case _LocalizedStringApi():
return $default(_that.en,_that.uk);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? en,  String? uk)?  $default,) {final _that = this;
switch (_that) {
case _LocalizedStringApi() when $default != null:
return $default(_that.en,_that.uk);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocalizedStringApi implements LocalizedStringApi {
  const _LocalizedStringApi({required this.en, required this.uk});
  factory _LocalizedStringApi.fromJson(Map<String, dynamic> json) => _$LocalizedStringApiFromJson(json);

@override final  String? en;
@override final  String? uk;

/// Create a copy of LocalizedStringApi
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalizedStringApiCopyWith<_LocalizedStringApi> get copyWith => __$LocalizedStringApiCopyWithImpl<_LocalizedStringApi>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocalizedStringApiToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalizedStringApi&&(identical(other.en, en) || other.en == en)&&(identical(other.uk, uk) || other.uk == uk));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,en,uk);

@override
String toString() {
  return 'LocalizedStringApi(en: $en, uk: $uk)';
}


}

/// @nodoc
abstract mixin class _$LocalizedStringApiCopyWith<$Res> implements $LocalizedStringApiCopyWith<$Res> {
  factory _$LocalizedStringApiCopyWith(_LocalizedStringApi value, $Res Function(_LocalizedStringApi) _then) = __$LocalizedStringApiCopyWithImpl;
@override @useResult
$Res call({
 String? en, String? uk
});




}
/// @nodoc
class __$LocalizedStringApiCopyWithImpl<$Res>
    implements _$LocalizedStringApiCopyWith<$Res> {
  __$LocalizedStringApiCopyWithImpl(this._self, this._then);

  final _LocalizedStringApi _self;
  final $Res Function(_LocalizedStringApi) _then;

/// Create a copy of LocalizedStringApi
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? en = freezed,Object? uk = freezed,}) {
  return _then(_LocalizedStringApi(
en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,uk: freezed == uk ? _self.uk : uk // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
