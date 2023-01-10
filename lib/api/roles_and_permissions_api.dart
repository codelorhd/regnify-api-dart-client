//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of regnify.api;


class RolesAndPermissionsApi {
  RolesAndPermissionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Assign Role
  ///
  /// Assigns the role to the specified user.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:create, me,  
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] roleId (required):
  ///
  /// * [String] userId (required):
  Future<Response> assignRoleWithHttpInfo(String roleId, String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/roles/{role_id}/assign-role'
      .replaceAll('{role_id}', roleId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'user_id', userId));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Assign Role
  ///
  /// Assigns the role to the specified user.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:create, me,  
  ///
  /// Parameters:
  ///
  /// * [String] roleId (required):
  ///
  /// * [String] userId (required):
  Future<UserOut?> assignRole(String roleId, String userId,) async {
    final response = await assignRoleWithHttpInfo(roleId, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserOut',) as UserOut;
    
    }
    return null;
  }

  /// Create Role
  ///
  /// Allows an admin to create a role in the system.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:create, me,  
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RoleCreate] roleCreate (required):
  Future<Response> createRoleWithHttpInfo(RoleCreate roleCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/roles/';

    // ignore: prefer_final_locals
    Object? postBody = roleCreate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Role
  ///
  /// Allows an admin to create a role in the system.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:create, me,  
  ///
  /// Parameters:
  ///
  /// * [RoleCreate] roleCreate (required):
  Future<RoleOut?> createRole(RoleCreate roleCreate,) async {
    final response = await createRoleWithHttpInfo(roleCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RoleOut',) as RoleOut;
    
    }
    return null;
  }

  /// Delete Role
  ///
  /// Deletes the role. This endpoint removes the roles from all users that has been previously assigned. The integer returned is the total number of all users the role has been removed from.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:delete, me,  
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] roleId (required):
  Future<Response> deleteRoleWithHttpInfo(String roleId,) async {
    // ignore: prefer_const_declarations
    final path = r'/roles/{role_id}'
      .replaceAll('{role_id}', roleId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Role
  ///
  /// Deletes the role. This endpoint removes the roles from all users that has been previously assigned. The integer returned is the total number of all users the role has been removed from.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:delete, me,  
  ///
  /// Parameters:
  ///
  /// * [String] roleId (required):
  Future<AppResponseModel?> deleteRole(String roleId,) async {
    final response = await deleteRoleWithHttpInfo(roleId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppResponseModel',) as AppResponseModel;
    
    }
    return null;
  }

  /// Edit Role
  ///
  /// Updates a single role                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:update, me,  
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] roleId (required):
  ///
  /// * [BodyEditRoleRolesRoleIdPut] bodyEditRoleRolesRoleIdPut (required):
  Future<Response> editRoleWithHttpInfo(String roleId, BodyEditRoleRolesRoleIdPut bodyEditRoleRolesRoleIdPut,) async {
    // ignore: prefer_const_declarations
    final path = r'/roles/{role_id}'
      .replaceAll('{role_id}', roleId);

    // ignore: prefer_final_locals
    Object? postBody = bodyEditRoleRolesRoleIdPut;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Edit Role
  ///
  /// Updates a single role                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:update, me,  
  ///
  /// Parameters:
  ///
  /// * [String] roleId (required):
  ///
  /// * [BodyEditRoleRolesRoleIdPut] bodyEditRoleRolesRoleIdPut (required):
  Future<RoleOut?> editRole(String roleId, BodyEditRoleRolesRoleIdPut bodyEditRoleRolesRoleIdPut,) async {
    final response = await editRoleWithHttpInfo(roleId, bodyEditRoleRolesRoleIdPut,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RoleOut',) as RoleOut;
    
    }
    return null;
  }

  /// Get Role
  ///
  /// Gets a single role                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:read, me,  
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] roleId (required):
  Future<Response> getRoleWithHttpInfo(String roleId,) async {
    // ignore: prefer_const_declarations
    final path = r'/roles/{role_id}'
      .replaceAll('{role_id}', roleId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Role
  ///
  /// Gets a single role                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:read, me,  
  ///
  /// Parameters:
  ///
  /// * [String] roleId (required):
  Future<RoleOut?> getRole(String roleId,) async {
    final response = await getRoleWithHttpInfo(roleId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RoleOut',) as RoleOut;
    
    }
    return null;
  }

  /// Get Roles
  ///
  /// Gets all the roles in the system                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:read, me,  
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OrderBy] orderBy:
  ///
  /// * [OrderDirection] orderDirection:
  ///
  /// * [String] title:
  ///
  /// * [String] query:
  ///
  /// * [int] skip:
  ///
  /// * [int] limit:
  Future<Response> getRolesWithHttpInfo({ OrderBy? orderBy, OrderDirection? orderDirection, String? title, String? query, int? skip, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/roles/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (orderBy != null) {
      queryParams.addAll(_queryParams('', 'order_by', orderBy));
    }
    if (orderDirection != null) {
      queryParams.addAll(_queryParams('', 'order_direction', orderDirection));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (skip != null) {
      queryParams.addAll(_queryParams('', 'skip', skip));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Roles
  ///
  /// Gets all the roles in the system                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:read, me,  
  ///
  /// Parameters:
  ///
  /// * [OrderBy] orderBy:
  ///
  /// * [OrderDirection] orderDirection:
  ///
  /// * [String] title:
  ///
  /// * [String] query:
  ///
  /// * [int] skip:
  ///
  /// * [int] limit:
  Future<ManyRolesOut?> getRoles({ OrderBy? orderBy, OrderDirection? orderDirection, String? title, String? query, int? skip, int? limit, }) async {
    final response = await getRolesWithHttpInfo( orderBy: orderBy, orderDirection: orderDirection, title: title, query: query, skip: skip, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ManyRolesOut',) as ManyRolesOut;
    
    }
    return null;
  }

  /// List Users Assigned To Role
  ///
  /// List the users that are assigned to a particular role.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:read, me,  
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] roleId (required):
  Future<Response> listUsersAssignedToRoleWithHttpInfo(String roleId,) async {
    // ignore: prefer_const_declarations
    final path = r'/roles/{role_id}/list-assigned-users'
      .replaceAll('{role_id}', roleId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List Users Assigned To Role
  ///
  /// List the users that are assigned to a particular role.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:read, me,  
  ///
  /// Parameters:
  ///
  /// * [String] roleId (required):
  Future<ManyUserRolesOut?> listUsersAssignedToRole(String roleId,) async {
    final response = await listUsersAssignedToRoleWithHttpInfo(roleId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ManyUserRolesOut',) as ManyUserRolesOut;
    
    }
    return null;
  }

  /// Unassign Role
  ///
  /// Unassign the role to the specified user.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:create, me,  
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] roleId (required):
  ///
  /// * [String] userId (required):
  Future<Response> unassignRoleWithHttpInfo(String roleId, String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/roles/{role_id}/unassign-role'
      .replaceAll('{role_id}', roleId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'user_id', userId));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Unassign Role
  ///
  /// Unassign the role to the specified user.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:create, me,  
  ///
  /// Parameters:
  ///
  /// * [String] roleId (required):
  ///
  /// * [String] userId (required):
  Future<UserOut?> unassignRole(String roleId, String userId,) async {
    final response = await unassignRoleWithHttpInfo(roleId, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserOut',) as UserOut;
    
    }
    return null;
  }
}
