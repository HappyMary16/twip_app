// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'painting_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaintingApi {

 int get id; LocalizedStringApi get title; LocalizedStringApi? get description;
/// Create a copy of PaintingApi
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaintingApiCopyWith<PaintingApi> get copyWith => _$PaintingApiCopyWithImpl<PaintingApi>(this as PaintingApi, _$identity);

  /// Serializes this PaintingApi to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaintingApi&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description);

@override
String toString() {
  return 'PaintingApi(id: $id, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $PaintingApiCopyWith<$Res>  {
  factory $PaintingApiCopyWith(PaintingApi value, $Res Function(PaintingApi) _then) = _$PaintingApiCopyWithImpl;
@useResult
$Res call({
 int id, LocalizedStringApi title, LocalizedStringApi? description
});


$LocalizedStringApiCopyWith<$Res> get title;$LocalizedStringApiCopyWith<$Res>? get description;

}
/// @nodoc
class _$PaintingApiCopyWithImpl<$Res>
    implements $PaintingApiCopyWith<$Res> {
  _$PaintingApiCopyWithImpl(this._self, this._then);

  final PaintingApi _self;
  final $Res Function(PaintingApi) _then;

/// Create a copy of PaintingApi
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as LocalizedStringApi,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as LocalizedStringApi?,
  ));
}
/// Create a copy of PaintingApi
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringApiCopyWith<$Res> get title {
  
  return $LocalizedStringApiCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of PaintingApi
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringApiCopyWith<$Res>? get description {
    if (_self.description == null) {
    return null;
  }

  return $LocalizedStringApiCopyWith<$Res>(_self.description!, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaintingApi].
extension PaintingApiPatterns on PaintingApi {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaintingApi value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaintingApi() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaintingApi value)  $default,){
final _that = this;
switch (_that) {
case _PaintingApi():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaintingApi value)?  $default,){
final _that = this;
switch (_that) {
case _PaintingApi() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  LocalizedStringApi title,  LocalizedStringApi? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaintingApi() when $default != null:
return $default(_that.id,_that.title,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  LocalizedStringApi title,  LocalizedStringApi? description)  $default,) {final _that = this;
switch (_that) {
case _PaintingApi():
return $default(_that.id,_that.title,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  LocalizedStringApi title,  LocalizedStringApi? description)?  $default,) {final _that = this;
switch (_that) {
case _PaintingApi() when $default != null:
return $default(_that.id,_that.title,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaintingApi implements PaintingApi {
  const _PaintingApi({required this.id, required this.title, required this.description});
  factory _PaintingApi.fromJson(Map<String, dynamic> json) => _$PaintingApiFromJson(json);

@override final  int id;
@override final  LocalizedStringApi title;
@override final  LocalizedStringApi? description;

/// Create a copy of PaintingApi
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaintingApiCopyWith<_PaintingApi> get copyWith => __$PaintingApiCopyWithImpl<_PaintingApi>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaintingApiToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaintingApi&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description);

@override
String toString() {
  return 'PaintingApi(id: $id, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$PaintingApiCopyWith<$Res> implements $PaintingApiCopyWith<$Res> {
  factory _$PaintingApiCopyWith(_PaintingApi value, $Res Function(_PaintingApi) _then) = __$PaintingApiCopyWithImpl;
@override @useResult
$Res call({
 int id, LocalizedStringApi title, LocalizedStringApi? description
});


@override $LocalizedStringApiCopyWith<$Res> get title;@override $LocalizedStringApiCopyWith<$Res>? get description;

}
/// @nodoc
class __$PaintingApiCopyWithImpl<$Res>
    implements _$PaintingApiCopyWith<$Res> {
  __$PaintingApiCopyWithImpl(this._self, this._then);

  final _PaintingApi _self;
  final $Res Function(_PaintingApi) _then;

/// Create a copy of PaintingApi
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,}) {
  return _then(_PaintingApi(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as LocalizedStringApi,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as LocalizedStringApi?,
  ));
}

/// Create a copy of PaintingApi
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringApiCopyWith<$Res> get title {
  
  return $LocalizedStringApiCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of PaintingApi
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringApiCopyWith<$Res>? get description {
    if (_self.description == null) {
    return null;
  }

  return $LocalizedStringApiCopyWith<$Res>(_self.description!, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}

// dart format on
