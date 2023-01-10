//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of regnify.api;

class UserUpdate {
  /// Returns a new [UserUpdate] instance.
  UserUpdate({
    this.isActive,
    this.isSuperAdmin,
    this.lastName,
    this.firstName,
    this.lastLogin,
    this.accessBegin,
    this.accessEnd,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isActive;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSuperAdmin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastLogin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? accessBegin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? accessEnd;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserUpdate &&
     other.isActive == isActive &&
     other.isSuperAdmin == isSuperAdmin &&
     other.lastName == lastName &&
     other.firstName == firstName &&
     other.lastLogin == lastLogin &&
     other.accessBegin == accessBegin &&
     other.accessEnd == accessEnd;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isActive == null ? 0 : isActive!.hashCode) +
    (isSuperAdmin == null ? 0 : isSuperAdmin!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastLogin == null ? 0 : lastLogin!.hashCode) +
    (accessBegin == null ? 0 : accessBegin!.hashCode) +
    (accessEnd == null ? 0 : accessEnd!.hashCode);

  @override
  String toString() => 'UserUpdate[isActive=$isActive, isSuperAdmin=$isSuperAdmin, lastName=$lastName, firstName=$firstName, lastLogin=$lastLogin, accessBegin=$accessBegin, accessEnd=$accessEnd]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.isActive != null) {
      json[r'is_active'] = this.isActive;
    } else {
      json[r'is_active'] = null;
    }
    if (this.isSuperAdmin != null) {
      json[r'is_super_admin'] = this.isSuperAdmin;
    } else {
      json[r'is_super_admin'] = null;
    }
    if (this.lastName != null) {
      json[r'last_name'] = this.lastName;
    } else {
      json[r'last_name'] = null;
    }
    if (this.firstName != null) {
      json[r'first_name'] = this.firstName;
    } else {
      json[r'first_name'] = null;
    }
    if (this.lastLogin != null) {
      json[r'last_login'] = this.lastLogin!.toUtc().toIso8601String();
    } else {
      json[r'last_login'] = null;
    }
    if (this.accessBegin != null) {
      json[r'access_begin'] = this.accessBegin!.toUtc().toIso8601String();
    } else {
      json[r'access_begin'] = null;
    }
    if (this.accessEnd != null) {
      json[r'access_end'] = this.accessEnd!.toUtc().toIso8601String();
    } else {
      json[r'access_end'] = null;
    }
    return json;
  }

  /// Returns a new [UserUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserUpdate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserUpdate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserUpdate(
        isActive: mapValueOfType<bool>(json, r'is_active'),
        isSuperAdmin: mapValueOfType<bool>(json, r'is_super_admin'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastLogin: mapDateTime(json, r'last_login', ''),
        accessBegin: mapDateTime(json, r'access_begin', ''),
        accessEnd: mapDateTime(json, r'access_end', ''),
      );
    }
    return null;
  }

  static List<UserUpdate>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserUpdate> mapFromJson(dynamic json) {
    final map = <String, UserUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserUpdate-objects as value to a dart map
  static Map<String, List<UserUpdate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserUpdate.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

