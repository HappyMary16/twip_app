// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'naviagtion_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NavigationData {

 Icon get selectedIcon; Icon get icon; String get label; String get route;
/// Create a copy of NavigationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigationDataCopyWith<NavigationData> get copyWith => _$NavigationDataCopyWithImpl<NavigationData>(this as NavigationData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigationData&&(identical(other.selectedIcon, selectedIcon) || other.selectedIcon == selectedIcon)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.label, label) || other.label == label)&&(identical(other.route, route) || other.route == route));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIcon,icon,label,route);

@override
String toString() {
  return 'NavigationData(selectedIcon: $selectedIcon, icon: $icon, label: $label, route: $route)';
}


}

/// @nodoc
abstract mixin class $NavigationDataCopyWith<$Res>  {
  factory $NavigationDataCopyWith(NavigationData value, $Res Function(NavigationData) _then) = _$NavigationDataCopyWithImpl;
@useResult
$Res call({
 Icon selectedIcon, Icon icon, String label, String route
});




}
/// @nodoc
class _$NavigationDataCopyWithImpl<$Res>
    implements $NavigationDataCopyWith<$Res> {
  _$NavigationDataCopyWithImpl(this._self, this._then);

  final NavigationData _self;
  final $Res Function(NavigationData) _then;

/// Create a copy of NavigationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedIcon = null,Object? icon = null,Object? label = null,Object? route = null,}) {
  return _then(_self.copyWith(
selectedIcon: null == selectedIcon ? _self.selectedIcon : selectedIcon // ignore: cast_nullable_to_non_nullable
as Icon,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as Icon,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NavigationData].
extension NavigationDataPatterns on NavigationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NavigationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NavigationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NavigationData value)  $default,){
final _that = this;
switch (_that) {
case _NavigationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NavigationData value)?  $default,){
final _that = this;
switch (_that) {
case _NavigationData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Icon selectedIcon,  Icon icon,  String label,  String route)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NavigationData() when $default != null:
return $default(_that.selectedIcon,_that.icon,_that.label,_that.route);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Icon selectedIcon,  Icon icon,  String label,  String route)  $default,) {final _that = this;
switch (_that) {
case _NavigationData():
return $default(_that.selectedIcon,_that.icon,_that.label,_that.route);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Icon selectedIcon,  Icon icon,  String label,  String route)?  $default,) {final _that = this;
switch (_that) {
case _NavigationData() when $default != null:
return $default(_that.selectedIcon,_that.icon,_that.label,_that.route);case _:
  return null;

}
}

}

/// @nodoc


class _NavigationData implements NavigationData {
  const _NavigationData({required this.selectedIcon, required this.icon, required this.label, required this.route});
  

@override final  Icon selectedIcon;
@override final  Icon icon;
@override final  String label;
@override final  String route;

/// Create a copy of NavigationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NavigationDataCopyWith<_NavigationData> get copyWith => __$NavigationDataCopyWithImpl<_NavigationData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NavigationData&&(identical(other.selectedIcon, selectedIcon) || other.selectedIcon == selectedIcon)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.label, label) || other.label == label)&&(identical(other.route, route) || other.route == route));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIcon,icon,label,route);

@override
String toString() {
  return 'NavigationData(selectedIcon: $selectedIcon, icon: $icon, label: $label, route: $route)';
}


}

/// @nodoc
abstract mixin class _$NavigationDataCopyWith<$Res> implements $NavigationDataCopyWith<$Res> {
  factory _$NavigationDataCopyWith(_NavigationData value, $Res Function(_NavigationData) _then) = __$NavigationDataCopyWithImpl;
@override @useResult
$Res call({
 Icon selectedIcon, Icon icon, String label, String route
});




}
/// @nodoc
class __$NavigationDataCopyWithImpl<$Res>
    implements _$NavigationDataCopyWith<$Res> {
  __$NavigationDataCopyWithImpl(this._self, this._then);

  final _NavigationData _self;
  final $Res Function(_NavigationData) _then;

/// Create a copy of NavigationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedIcon = null,Object? icon = null,Object? label = null,Object? route = null,}) {
  return _then(_NavigationData(
selectedIcon: null == selectedIcon ? _self.selectedIcon : selectedIcon // ignore: cast_nullable_to_non_nullable
as Icon,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as Icon,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
