// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Path {

 int get id; String get name; List<int> get paintings;
/// Create a copy of Path
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PathCopyWith<Path> get copyWith => _$PathCopyWithImpl<Path>(this as Path, _$identity);

  /// Serializes this Path to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Path&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.paintings, paintings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(paintings));

@override
String toString() {
  return 'Path(id: $id, name: $name, paintings: $paintings)';
}


}

/// @nodoc
abstract mixin class $PathCopyWith<$Res>  {
  factory $PathCopyWith(Path value, $Res Function(Path) _then) = _$PathCopyWithImpl;
@useResult
$Res call({
 int id, String name, List<int> paintings
});




}
/// @nodoc
class _$PathCopyWithImpl<$Res>
    implements $PathCopyWith<$Res> {
  _$PathCopyWithImpl(this._self, this._then);

  final Path _self;
  final $Res Function(Path) _then;

/// Create a copy of Path
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? paintings = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,paintings: null == paintings ? _self.paintings : paintings // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [Path].
extension PathPatterns on Path {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Path value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Path() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Path value)  $default,){
final _that = this;
switch (_that) {
case _Path():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Path value)?  $default,){
final _that = this;
switch (_that) {
case _Path() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  List<int> paintings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Path() when $default != null:
return $default(_that.id,_that.name,_that.paintings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  List<int> paintings)  $default,) {final _that = this;
switch (_that) {
case _Path():
return $default(_that.id,_that.name,_that.paintings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  List<int> paintings)?  $default,) {final _that = this;
switch (_that) {
case _Path() when $default != null:
return $default(_that.id,_that.name,_that.paintings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Path implements Path {
  const _Path({required this.id, required this.name, required final  List<int> paintings}): _paintings = paintings;
  factory _Path.fromJson(Map<String, dynamic> json) => _$PathFromJson(json);

@override final  int id;
@override final  String name;
 final  List<int> _paintings;
@override List<int> get paintings {
  if (_paintings is EqualUnmodifiableListView) return _paintings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paintings);
}


/// Create a copy of Path
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PathCopyWith<_Path> get copyWith => __$PathCopyWithImpl<_Path>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PathToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Path&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._paintings, _paintings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_paintings));

@override
String toString() {
  return 'Path(id: $id, name: $name, paintings: $paintings)';
}


}

/// @nodoc
abstract mixin class _$PathCopyWith<$Res> implements $PathCopyWith<$Res> {
  factory _$PathCopyWith(_Path value, $Res Function(_Path) _then) = __$PathCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, List<int> paintings
});




}
/// @nodoc
class __$PathCopyWithImpl<$Res>
    implements _$PathCopyWith<$Res> {
  __$PathCopyWithImpl(this._self, this._then);

  final _Path _self;
  final $Res Function(_Path) _then;

/// Create a copy of Path
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? paintings = null,}) {
  return _then(_Path(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,paintings: null == paintings ? _self._paintings : paintings // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
