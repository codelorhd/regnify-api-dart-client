//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of regnify.api;

class MiniRoleOut {
  /// Returns a new [MiniRoleOut] instance.
  MiniRoleOut({
    required this.title,
    this.permissions = const [],
  });

  String title;

  List<String> permissions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MiniRoleOut &&
     other.title == title &&
     other.permissions == permissions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title.hashCode) +
    (permissions.hashCode);

  @override
  String toString() => 'MiniRoleOut[title=$title, permissions=$permissions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'title'] = this.title;
      json[r'permissions'] = this.permissions;
    return json;
  }

  /// Returns a new [MiniRoleOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MiniRoleOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MiniRoleOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MiniRoleOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MiniRoleOut(
        title: mapValueOfType<String>(json, r'title')!,
        permissions: json[r'permissions'] is List
            ? (json[r'permissions'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<MiniRoleOut>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MiniRoleOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MiniRoleOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MiniRoleOut> mapFromJson(dynamic json) {
    final map = <String, MiniRoleOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MiniRoleOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MiniRoleOut-objects as value to a dart map
  static Map<String, List<MiniRoleOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MiniRoleOut>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MiniRoleOut.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'title',
    'permissions',
  };
}

