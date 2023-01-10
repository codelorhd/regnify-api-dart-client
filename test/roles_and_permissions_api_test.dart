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


/// tests for RolesAndPermissionsApi
void main() {
  // final instance = RolesAndPermissionsApi();

  group('tests for RolesAndPermissionsApi', () {
    // Assign Role
    //
    // Assigns the role to the specified user.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:create, me,  
    //
    //Future<UserOut> assignRole(String roleId, String userId) async
    test('test assignRole', () async {
      // TODO
    });

    // Create Role
    //
    // Allows an admin to create a role in the system.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:create, me,  
    //
    //Future<RoleOut> createRole(RoleCreate roleCreate) async
    test('test createRole', () async {
      // TODO
    });

    // Delete Role
    //
    // Deletes the role. This endpoint removes the roles from all users that has been previously assigned. The integer returned is the total number of all users the role has been removed from.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:delete, me,  
    //
    //Future<AppResponseModel> deleteRole(String roleId) async
    test('test deleteRole', () async {
      // TODO
    });

    // Edit Role
    //
    // Updates a single role                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:update, me,  
    //
    //Future<RoleOut> editRole(String roleId, BodyEditRoleRolesRoleIdPut bodyEditRoleRolesRoleIdPut) async
    test('test editRole', () async {
      // TODO
    });

    // Get Role
    //
    // Gets a single role                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:read, me,  
    //
    //Future<RoleOut> getRole(String roleId) async
    test('test getRole', () async {
      // TODO
    });

    // Get Roles
    //
    // Gets all the roles in the system                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:read, me,  
    //
    //Future<ManyRolesOut> getRoles({ OrderBy orderBy, OrderDirection orderDirection, String title, String query, int skip, int limit }) async
    test('test getRoles', () async {
      // TODO
    });

    // List Users Assigned To Role
    //
    // List the users that are assigned to a particular role.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:read, me,  
    //
    //Future<ManyUserRolesOut> listUsersAssignedToRole(String roleId) async
    test('test listUsersAssignedToRole', () async {
      // TODO
    });

    // Unassign Role
    //
    // Unassign the role to the specified user.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:create, me,  
    //
    //Future<UserOut> unassignRole(String roleId, String userId) async
    test('test unassignRole', () async {
      // TODO
    });

  });
}
