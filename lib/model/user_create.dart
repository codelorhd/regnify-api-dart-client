//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of regnify.api;

class UserCreate {
  /// Returns a new [UserCreate] instance.
  UserCreate({
    required this.email,
    this.accessBegin,
    this.accessEnd,
    this.isSuperAdmin = false,
    required this.lastName,
    required this.firstName,
    required this.password,
  });

  String email;

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

  bool isSuperAdmin;

  String lastName;

  String firstName;

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserCreate &&
     other.email == email &&
     other.accessBegin == accessBegin &&
     other.accessEnd == accessEnd &&
     other.isSuperAdmin == isSuperAdmin &&
     other.lastName == lastName &&
     other.firstName == firstName &&
     other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (accessBegin == null ? 0 : accessBegin!.hashCode) +
    (accessEnd == null ? 0 : accessEnd!.hashCode) +
    (isSuperAdmin.hashCode) +
    (lastName.hashCode) +
    (firstName.hashCode) +
    (password.hashCode);

  @override
  String toString() => 'UserCreate[email=$email, accessBegin=$accessBegin, accessEnd=$accessEnd, isSuperAdmin=$isSuperAdmin, lastName=$lastName, firstName=$firstName, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
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
      json[r'is_super_admin'] = this.isSuperAdmin;
      json[r'last_name'] = this.lastName;
      json[r'first_name'] = this.firstName;
      json[r'password'] = this.password;
    return json;
  }

  /// Returns a new [UserCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserCreate(
        email: mapValueOfType<String>(json, r'email')!,
        accessBegin: mapDateTime(json, r'access_begin', ''),
        accessEnd: mapDateTime(json, r'access_end', ''),
        isSuperAdmin: mapValueOfType<bool>(json, r'is_super_admin') ?? false,
        lastName: mapValueOfType<String>(json, r'last_name')!,
        firstName: mapValueOfType<String>(json, r'first_name')!,
        password: mapValueOfType<String>(json, r'password')!,
      );
    }
    return null;
  }

  static List<UserCreate>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserCreate> mapFromJson(dynamic json) {
    final map = <String, UserCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserCreate-objects as value to a dart map
  static Map<String, List<UserCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserCreate>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserCreate.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'last_name',
    'first_name',
    'password',
  };
}

