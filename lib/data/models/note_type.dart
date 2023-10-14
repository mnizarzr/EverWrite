import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

@immutable
class NoteType {
  final String title;
  final String subtitle;
  final List<Color>? colors;
  final String icon;

  const NoteType({
    required this.title,
    required this.subtitle,
    this.colors,
    required this.icon,
  });

  @override
  String toString() {
    return 'NoteType(title: $title, subtitle: $subtitle, colors: $colors, icon: $icon)';
  }

  factory NoteType.fromMap(Map<String, dynamic> data) {
    List<Color> colors = (data['colors'] as List<String>)
        .map((hex) =>
            Color(int.parse(hex.substring(1, 7), radix: 16) + 0xFF000000),)
        .toList();
    return NoteType(
      title: data['title'] as String,
      subtitle: data['subtitle'] as String,
      colors: colors,
      icon: data['icon'] as String,
    );
  }

  Map<String, dynamic> toMap() => {
        'title': title,
        'subtitle': subtitle,
        'colors': colors,
        'icon': icon,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [NoteType].
  factory NoteType.fromJson(String data) {
    return NoteType.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [NoteType] to a JSON string.
  String toJson() => json.encode(toMap());

  NoteType copyWith({
    String? title,
    String? subtitle,
    List<Color>? colors,
    String? icon,
  }) {
    return NoteType(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      colors: colors ?? this.colors,
      icon: icon ?? this.icon,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! NoteType) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      title.hashCode ^ subtitle.hashCode ^ colors.hashCode ^ icon.hashCode;
}
