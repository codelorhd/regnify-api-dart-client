//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of regnify.api;

class ManyUsersInDB {
  /// Returns a new [ManyUsersInDB] instance.
  ManyUsersInDB({
    this.total = 0,
    this.data = const [],
  });

  int total;

  List<UserOut> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ManyUsersInDB &&
     other.total == total &&
     other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (total.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'ManyUsersInDB[total=$total, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'total'] = this.total;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [ManyUsersInDB] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ManyUsersInDB? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ManyUsersInDB[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ManyUsersInDB[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ManyUsersInDB(
        total: mapValueOfType<int>(json, r'total') ?? 0,
        data: UserOut.listFromJson(json[r'data'])!,
      );
    }
    return null;
  }

  static List<ManyUsersInDB>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ManyUsersInDB>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ManyUsersInDB.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ManyUsersInDB> mapFromJson(dynamic json) {
    final map = <String, ManyUsersInDB>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ManyUsersInDB.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ManyUsersInDB-objects as value to a dart map
  static Map<String, List<ManyUsersInDB>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ManyUsersInDB>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ManyUsersInDB.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
  };
}

