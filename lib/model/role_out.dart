//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of regnify.api;

class RoleOut {
  /// Returns a new [RoleOut] instance.
  RoleOut({
    required this.id,
    required this.title,
    this.permissions = const [],
    required this.canBeDeleted,
    required this.createdByUser,
    this.modifiedByUser,
    required this.dateCreated,
    this.dateModified,
  });

  String id;

  String title;

  List<String> permissions;

  bool canBeDeleted;

  UserOut createdByUser;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserOut? modifiedByUser;

  DateTime dateCreated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? dateModified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RoleOut &&
     other.id == id &&
     other.title == title &&
     other.permissions == permissions &&
     other.canBeDeleted == canBeDeleted &&
     other.createdByUser == createdByUser &&
     other.modifiedByUser == modifiedByUser &&
     other.dateCreated == dateCreated &&
     other.dateModified == dateModified;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (permissions.hashCode) +
    (canBeDeleted.hashCode) +
    (createdByUser.hashCode) +
    (modifiedByUser == null ? 0 : modifiedByUser!.hashCode) +
    (dateCreated.hashCode) +
    (dateModified == null ? 0 : dateModified!.hashCode);

  @override
  String toString() => 'RoleOut[id=$id, title=$title, permissions=$permissions, canBeDeleted=$canBeDeleted, createdByUser=$createdByUser, modifiedByUser=$modifiedByUser, dateCreated=$dateCreated, dateModified=$dateModified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
      json[r'permissions'] = this.permissions;
      json[r'can_be_deleted'] = this.canBeDeleted;
      json[r'created_by_user'] = this.createdByUser;
    if (this.modifiedByUser != null) {
      json[r'modified_by_user'] = this.modifiedByUser;
    } else {
      json[r'modified_by_user'] = null;
    }
      json[r'date_created'] = this.dateCreated.toUtc().toIso8601String();
    if (this.dateModified != null) {
      json[r'date_modified'] = this.dateModified!.toUtc().toIso8601String();
    } else {
      json[r'date_modified'] = null;
    }
    return json;
  }

  /// Returns a new [RoleOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RoleOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RoleOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RoleOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RoleOut(
        id: mapValueOfType<String>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        permissions: json[r'permissions'] is List
            ? (json[r'permissions'] as List).cast<String>()
            : const [],
        canBeDeleted: mapValueOfType<bool>(json, r'can_be_deleted')!,
        createdByUser: UserOut.fromJson(json[r'created_by_user'])!,
        modifiedByUser: UserOut.fromJson(json[r'modified_by_user']),
        dateCreated: mapDateTime(json, r'date_created', '')!,
        dateModified: mapDateTime(json, r'date_modified', ''),
      );
    }
    return null;
  }

  static List<RoleOut>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RoleOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RoleOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RoleOut> mapFromJson(dynamic json) {
    final map = <String, RoleOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RoleOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RoleOut-objects as value to a dart map
  static Map<String, List<RoleOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RoleOut>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RoleOut.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'permissions',
    'can_be_deleted',
    'created_by_user',
    'date_created',
  };
}

