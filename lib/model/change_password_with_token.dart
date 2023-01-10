//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of regnify.api;

class ChangePasswordWithToken {
  /// Returns a new [ChangePasswordWithToken] instance.
  ChangePasswordWithToken({
    required this.token,
    required this.newPassword,
  });

  String token;

  String newPassword;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChangePasswordWithToken &&
     other.token == token &&
     other.newPassword == newPassword;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (token.hashCode) +
    (newPassword.hashCode);

  @override
  String toString() => 'ChangePasswordWithToken[token=$token, newPassword=$newPassword]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token'] = this.token;
      json[r'new_password'] = this.newPassword;
    return json;
  }

  /// Returns a new [ChangePasswordWithToken] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChangePasswordWithToken? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChangePasswordWithToken[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChangePasswordWithToken[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChangePasswordWithToken(
        token: mapValueOfType<String>(json, r'token')!,
        newPassword: mapValueOfType<String>(json, r'new_password')!,
      );
    }
    return null;
  }

  static List<ChangePasswordWithToken>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChangePasswordWithToken>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChangePasswordWithToken.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChangePasswordWithToken> mapFromJson(dynamic json) {
    final map = <String, ChangePasswordWithToken>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChangePasswordWithToken.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChangePasswordWithToken-objects as value to a dart map
  static Map<String, List<ChangePasswordWithToken>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChangePasswordWithToken>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChangePasswordWithToken.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'token',
    'new_password',
  };
}

