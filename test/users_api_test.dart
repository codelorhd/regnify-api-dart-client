//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:regnify_core/api.dart';
import 'package:test/test.dart';


/// tests for UsersApi
void main() {
  // final instance = UsersApi();

  group('tests for UsersApi', () {
    // Admin Change User Password
    //
    // <strong>Scopes: </strong> me,
    //
    //Future<UserOut> adminChangeUserPassword(String userId, ChangePassword changePassword) async
    test('test adminChangeUserPassword', () async {
      // TODO
    });

    // Change User Password
    //
    //Future<AppResponseModel> changeUserPassword(ChangePasswordWithToken changePasswordWithToken) async
    test('test changeUserPassword', () async {
      // TODO
    });

    // Create User
    //
    // Allows a user to create another user in the system. The user is made active if the correct admin-signup-token is provided, and no email will be sent to the user.                                         <br />                                         <br />                                         <strong>Scopes: </strong> user:create, me,  
    //
    //Future<UserOut> createUser(UserCreate userCreate, { String adminSignupToken }) async
    test('test createUser', () async {
      // TODO
    });

    // Download User Photo
    //
    // <strong>Scopes: </strong> me,
    //
    //Future downloadUserPhoto(String userId) async
    test('test downloadUserPhoto', () async {
      // TODO
    });

    // List Scopes
    //
    // <strong>Scopes: </strong> me,                                         <br />                                         <br />                                         <strong>Scopes: </strong> me, 
    //
    //Future<ManySystemScopeOut> listScopes() async
    test('test listScopes', () async {
      // TODO
    });

    // Read User
    //
    // <strong>Scopes: </strong> me,
    //
    //Future<UserOut> readUser(String userId) async
    test('test readUser', () async {
      // TODO
    });

    // Read User Me
    //
    // <strong>Scopes: </strong> me,
    //
    //Future<UserOut> readUserMe() async
    test('test readUserMe', () async {
      // TODO
    });

    // Read Users
    //
    // <strong>Scopes: </strong> me,
    //
    //Future<ManyUsersInDB> readUsers({ String query, int skip, int limit }) async
    test('test readUsers', () async {
      // TODO
    });

    // Request Password Change
    //
    //Future<AppResponseModel> requestPasswordChange(String email) async
    test('test requestPasswordChange', () async {
      // TODO
    });

    // Resend Invite
    //
    // Sends an email to the user on how to access their account again.
    //
    //Future<AppResponseModel> resendInvite(String email) async
    test('test resendInvite', () async {
      // TODO
    });

    // Update User
    //
    // <strong>Scopes: </strong> me,
    //
    //Future<UserOut> updateUser(String userId, UserUpdate userUpdate) async
    test('test updateUser', () async {
      // TODO
    });

    // Upload User Photo
    //
    // <strong>Scopes: </strong> me,
    //
    //Future<ProfileOut> uploadUserPhoto(String userId, MultipartFile fileToUpload) async
    test('test uploadUserPhoto', () async {
      // TODO
    });

  });
}
