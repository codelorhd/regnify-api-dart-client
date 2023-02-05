//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of regnify.api;


class UsersApi {
  UsersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Admin Change User Password
  ///
  /// <strong>Scopes: </strong> me,
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [ChangePassword] changePassword (required):
  Future<Response> adminChangeUserPasswordWithHttpInfo(String userId, ChangePassword changePassword,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/admin-change-user-password'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = changePassword;

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

  /// Admin Change User Password
  ///
  /// <strong>Scopes: </strong> me,
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [ChangePassword] changePassword (required):
  Future<UserOut?> adminChangeUserPassword(String userId, ChangePassword changePassword,) async {
    final response = await adminChangeUserPasswordWithHttpInfo(userId, changePassword,);
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

  /// Change User Password
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ChangePasswordWithToken] changePasswordWithToken (required):
  Future<Response> changeUserPasswordWithHttpInfo(ChangePasswordWithToken changePasswordWithToken,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/change-user-password';

    // ignore: prefer_final_locals
    Object? postBody = changePasswordWithToken;

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

  /// Change User Password
  ///
  /// Parameters:
  ///
  /// * [ChangePasswordWithToken] changePasswordWithToken (required):
  Future<AppResponseModel?> changeUserPassword(ChangePasswordWithToken changePasswordWithToken,) async {
    final response = await changeUserPasswordWithHttpInfo(changePasswordWithToken,);
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

  /// Create User
  ///
  /// Allows a user to create another user in the system. The user is made active if the correct admin-signup-token is provided, and no email will be sent to the user.                                         <br />                                         <br />                                         <strong>Scopes: </strong> user:create, me,  
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserCreate] userCreate (required):
  ///
  /// * [String] adminSignupToken:
  ///   The correct admin token to use admin only features
  Future<Response> createUserWithHttpInfo(UserCreate userCreate, { String? adminSignupToken, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/';

    // ignore: prefer_final_locals
    Object? postBody = userCreate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (adminSignupToken != null) {
      headerParams[r'admin-signup-token'] = parameterToString(adminSignupToken);
    }

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

  /// Create User
  ///
  /// Allows a user to create another user in the system. The user is made active if the correct admin-signup-token is provided, and no email will be sent to the user.                                         <br />                                         <br />                                         <strong>Scopes: </strong> user:create, me,  
  ///
  /// Parameters:
  ///
  /// * [UserCreate] userCreate (required):
  ///
  /// * [String] adminSignupToken:
  ///   The correct admin token to use admin only features
  Future<UserOut?> createUser(UserCreate userCreate, { String? adminSignupToken, }) async {
    final response = await createUserWithHttpInfo(userCreate,  adminSignupToken: adminSignupToken, );
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

  /// Download User Photo
  ///
  /// <strong>Scopes: </strong> me,
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> downloadUserPhotoWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/download-photo'
      .replaceAll('{user_id}', userId);

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

  /// Download User Photo
  ///
  /// <strong>Scopes: </strong> me,
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<void> downloadUserPhoto(String userId,) async {
    final response = await downloadUserPhotoWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List Scopes
  ///
  /// <strong>Scopes: </strong> me,                                         <br />                                         <br />                                         <strong>Scopes: </strong> me, 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listScopesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/users/list-scopes';

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

  /// List Scopes
  ///
  /// <strong>Scopes: </strong> me,                                         <br />                                         <br />                                         <strong>Scopes: </strong> me, 
  Future<ManySystemScopeOut?> listScopes() async {
    final response = await listScopesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ManySystemScopeOut',) as ManySystemScopeOut;
    
    }
    return null;
  }

  /// Read User
  ///
  /// <strong>Scopes: </strong> me,
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> readUserWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}'
      .replaceAll('{user_id}', userId);

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

  /// Read User
  ///
  /// <strong>Scopes: </strong> me,
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<UserOut?> readUser(String userId,) async {
    final response = await readUserWithHttpInfo(userId,);
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

  /// Read User Me
  ///
  /// <strong>Scopes: </strong> me,
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> readUserMeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/users/token';

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

  /// Read User Me
  ///
  /// <strong>Scopes: </strong> me,
  Future<UserOut?> readUserMe() async {
    final response = await readUserMeWithHttpInfo();
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

  /// Read Users
  ///
  /// <strong>Scopes: </strong> me,
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///
  /// * [int] skip:
  ///
  /// * [int] limit:
  Future<Response> readUsersWithHttpInfo({ String? query, int? skip, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Read Users
  ///
  /// <strong>Scopes: </strong> me,
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///
  /// * [int] skip:
  ///
  /// * [int] limit:
  Future<ManyUsersInDB?> readUsers({ String? query, int? skip, int? limit, }) async {
    final response = await readUsersWithHttpInfo( query: query, skip: skip, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ManyUsersInDB',) as ManyUsersInDB;
    
    }
    return null;
  }

  /// Request Password Change
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  Future<Response> requestPasswordChangeWithHttpInfo(String email,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/request-password-change';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'email', email));

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

  /// Request Password Change
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  Future<AppResponseModel?> requestPasswordChange(String email,) async {
    final response = await requestPasswordChangeWithHttpInfo(email,);
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

  /// Resend Invite
  ///
  /// Sends an email to the user on how to access their account again.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  Future<Response> resendInviteWithHttpInfo(String email,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/resend-invite';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'email', email));

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

  /// Resend Invite
  ///
  /// Sends an email to the user on how to access their account again.
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  Future<AppResponseModel?> resendInvite(String email,) async {
    final response = await resendInviteWithHttpInfo(email,);
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

  /// Update User
  ///
  /// <strong>Scopes: </strong> me,
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [UserUpdate] userUpdate (required):
  Future<Response> updateUserWithHttpInfo(String userId, UserUpdate userUpdate,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = userUpdate;

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

  /// Update User
  ///
  /// <strong>Scopes: </strong> me,
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [UserUpdate] userUpdate (required):
  Future<UserOut?> updateUser(String userId, UserUpdate userUpdate,) async {
    final response = await updateUserWithHttpInfo(userId, userUpdate,);
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

  /// Upload User Photo
  ///
  /// <strong>Scopes: </strong> me,
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [MultipartFile] fileToUpload (required):
  Future<Response> uploadUserPhotoWithHttpInfo(String userId, MultipartFile fileToUpload,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/upload-photo'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('PUT', Uri.parse(path));
    if (fileToUpload != null) {
      hasFields = true;
      mp.fields[r'file_to_upload'] = fileToUpload.field;
      mp.files.add(fileToUpload);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Upload User Photo
  ///
  /// <strong>Scopes: </strong> me,
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [MultipartFile] fileToUpload (required):
  Future<ProfileOut?> uploadUserPhoto(String userId, MultipartFile fileToUpload,) async {
    final response = await uploadUserPhotoWithHttpInfo(userId, fileToUpload,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProfileOut',) as ProfileOut;
    
    }
    return null;
  }
}
