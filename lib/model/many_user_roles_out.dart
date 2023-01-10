//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of regnify.api;

class ManyUserRolesOut {
  /// Returns a new [ManyUserRolesOut] instance.
  ManyUserRolesOut({
    required this.total,
    this.userRoles = const [],
  });

  int total;

  List<UserRoleOut> userRoles;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ManyUserRolesOut &&
     other.total == total &&
     other.userRoles == userRoles;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (total.hashCode) +
    (userRoles.hashCode);

  @override
  String toString() => 'ManyUserRolesOut[total=$total, userRoles=$userRoles]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'total'] = this.total;
      json[r'user_roles'] = this.userRoles;
    return json;
  }

  /// Returns a new [ManyUserRolesOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ManyUserRolesOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ManyUserRolesOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ManyUserRolesOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ManyUserRolesOut(
        total: mapValueOfType<int>(json, r'total')!,
        userRoles: UserRoleOut.listFromJson(json[r'user_roles'])!,
      );
    }
    return null;
  }

  static List<ManyUserRolesOut>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ManyUserRolesOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ManyUserRolesOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ManyUserRolesOut> mapFromJson(dynamic json) {
    final map = <String, ManyUserRolesOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ManyUserRolesOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ManyUserRolesOut-objects as value to a dart map
  static Map<String, List<ManyUserRolesOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ManyUserRolesOut>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ManyUserRolesOut.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'total',
    'user_roles',
  };
}

