//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of regnify.api;

class ProfileOut {
  /// Returns a new [ProfileOut] instance.
  ProfileOut({
    required this.lastName,
    required this.firstName,
    required this.avatarUrl,
    this.photoFile,
  });

  String lastName;

  String firstName;

  String avatarUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MiniFileObjectOut? photoFile;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProfileOut &&
     other.lastName == lastName &&
     other.firstName == firstName &&
     other.avatarUrl == avatarUrl &&
     other.photoFile == photoFile;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (lastName.hashCode) +
    (firstName.hashCode) +
    (avatarUrl.hashCode) +
    (photoFile == null ? 0 : photoFile!.hashCode);

  @override
  String toString() => 'ProfileOut[lastName=$lastName, firstName=$firstName, avatarUrl=$avatarUrl, photoFile=$photoFile]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'last_name'] = this.lastName;
      json[r'first_name'] = this.firstName;
      json[r'avatar_url'] = this.avatarUrl;
    if (this.photoFile != null) {
      json[r'photo_file'] = this.photoFile;
    } else {
      json[r'photo_file'] = null;
    }
    return json;
  }

  /// Returns a new [ProfileOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProfileOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProfileOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProfileOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProfileOut(
        lastName: mapValueOfType<String>(json, r'last_name')!,
        firstName: mapValueOfType<String>(json, r'first_name')!,
        avatarUrl: mapValueOfType<String>(json, r'avatar_url')!,
        photoFile: MiniFileObjectOut.fromJson(json[r'photo_file']),
      );
    }
    return null;
  }

  static List<ProfileOut>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProfileOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProfileOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProfileOut> mapFromJson(dynamic json) {
    final map = <String, ProfileOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProfileOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProfileOut-objects as value to a dart map
  static Map<String, List<ProfileOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProfileOut>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProfileOut.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'last_name',
    'first_name',
    'avatar_url',
  };
}

