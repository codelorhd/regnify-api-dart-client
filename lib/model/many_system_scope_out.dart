//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of regnify.api;

class ManySystemScopeOut {
  /// Returns a new [ManySystemScopeOut] instance.
  ManySystemScopeOut({
    this.scopes = const [],
  });

  List<SystemScopeOut> scopes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ManySystemScopeOut &&
     other.scopes == scopes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (scopes.hashCode);

  @override
  String toString() => 'ManySystemScopeOut[scopes=$scopes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'scopes'] = this.scopes;
    return json;
  }

  /// Returns a new [ManySystemScopeOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ManySystemScopeOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ManySystemScopeOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ManySystemScopeOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ManySystemScopeOut(
        scopes: SystemScopeOut.listFromJson(json[r'scopes'])!,
      );
    }
    return null;
  }

  static List<ManySystemScopeOut>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ManySystemScopeOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ManySystemScopeOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ManySystemScopeOut> mapFromJson(dynamic json) {
    final map = <String, ManySystemScopeOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ManySystemScopeOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ManySystemScopeOut-objects as value to a dart map
  static Map<String, List<ManySystemScopeOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ManySystemScopeOut>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ManySystemScopeOut.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'scopes',
  };
}

