//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of regnify.api;


class AuthApi {
  AuthApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Login
  ///
  /// Authenticates with the given credentials.  **Note**, passwords are case sensitive.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///
  /// * [String] password (required):
  ///
  /// * [String] grantType:
  ///
  /// * [String] scope:
  ///
  /// * [String] clientId:
  ///
  /// * [String] clientSecret:
  Future<Response> loginWithHttpInfo(String username, String password, { String? grantType, String? scope, String? clientId, String? clientSecret, }) async {
    // ignore: prefer_const_declarations
    final path = r'/token';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (grantType != null) {
      formParams[r'grant_type'] = parameterToString(grantType);
    }
    if (username != null) {
      formParams[r'username'] = parameterToString(username);
    }
    if (password != null) {
      formParams[r'password'] = parameterToString(password);
    }
    if (scope != null) {
      formParams[r'scope'] = parameterToString(scope);
    }
    if (clientId != null) {
      formParams[r'client_id'] = parameterToString(clientId);
    }
    if (clientSecret != null) {
      formParams[r'client_secret'] = parameterToString(clientSecret);
    }

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

  /// Login
  ///
  /// Authenticates with the given credentials.  **Note**, passwords are case sensitive.
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///
  /// * [String] password (required):
  ///
  /// * [String] grantType:
  ///
  /// * [String] scope:
  ///
  /// * [String] clientId:
  ///
  /// * [String] clientSecret:
  Future<AccessToken?> login(String username, String password, { String? grantType, String? scope, String? clientId, String? clientSecret, }) async {
    final response = await loginWithHttpInfo(username, password,  grantType: grantType, scope: scope, clientId: clientId, clientSecret: clientSecret, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccessToken',) as AccessToken;
    
    }
    return null;
  }
}
