import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'naviagtion_data.freezed.dart';

@freezed
abstract class NavigationData with _$NavigationData {
  const factory NavigationData({
    required Icon selectedIcon,
    required Icon icon,
    required String label,
    required String route}) = _NavigationData;
}
