//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of regnify.api;

class UserOut {
  /// Returns a new [UserOut] instance.
  UserOut({
    required this.email,
    this.accessBegin,
    this.accessEnd,
    required this.id,
    required this.isActive,
    required this.isSuperAdmin,
    this.userRoles = const [],
    required this.profile,
    this.lastLogin,
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

  String id;

  bool isActive;

  bool isSuperAdmin;

  List<MiniUserRoleOut> userRoles;

  ProfileOut profile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastLogin;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserOut &&
     other.email == email &&
     other.accessBegin == accessBegin &&
     other.accessEnd == accessEnd &&
     other.id == id &&
     other.isActive == isActive &&
     other.isSuperAdmin == isSuperAdmin &&
     other.userRoles == userRoles &&
     other.profile == profile &&
     other.lastLogin == lastLogin;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (accessBegin == null ? 0 : accessBegin!.hashCode) +
    (accessEnd == null ? 0 : accessEnd!.hashCode) +
    (id.hashCode) +
    (isActive.hashCode) +
    (isSuperAdmin.hashCode) +
    (userRoles.hashCode) +
    (profile.hashCode) +
    (lastLogin == null ? 0 : lastLogin!.hashCode);

  @override
  String toString() => 'UserOut[email=$email, accessBegin=$accessBegin, accessEnd=$accessEnd, id=$id, isActive=$isActive, isSuperAdmin=$isSuperAdmin, userRoles=$userRoles, profile=$profile, lastLogin=$lastLogin]';

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
      json[r'id'] = this.id;
      json[r'is_active'] = this.isActive;
      json[r'is_super_admin'] = this.isSuperAdmin;
      json[r'user_roles'] = this.userRoles;
      json[r'profile'] = this.profile;
    if (this.lastLogin != null) {
      json[r'last_login'] = this.lastLogin!.toUtc().toIso8601String();
    } else {
      json[r'last_login'] = null;
    }
    return json;
  }

  /// Returns a new [UserOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserOut(
        email: mapValueOfType<String>(json, r'email')!,
        accessBegin: mapDateTime(json, r'access_begin', ''),
        accessEnd: mapDateTime(json, r'access_end', ''),
        id: mapValueOfType<String>(json, r'id')!,
        isActive: mapValueOfType<bool>(json, r'is_active')!,
        isSuperAdmin: mapValueOfType<bool>(json, r'is_super_admin')!,
        userRoles: MiniUserRoleOut.listFromJson(json[r'user_roles'])!,
        profile: ProfileOut.fromJson(json[r'profile'])!,
        lastLogin: mapDateTime(json, r'last_login', ''),
      );
    }
    return null;
  }

  static List<UserOut>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserOut> mapFromJson(dynamic json) {
    final map = <String, UserOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserOut-objects as value to a dart map
  static Map<String, List<UserOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserOut>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserOut.listFromJson(entry.value, growable: growable,);
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
    'id',
    'is_active',
    'is_super_admin',
    'user_roles',
    'profile',
  };
}

