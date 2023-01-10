# regnify_core.api.UsersApi

## Load the API package
```dart
import 'package:regnify_core/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminChangeUserPassword**](UsersApi.md#adminchangeuserpassword) | **PUT** /users/{user_id}/admin-change-user-password | Admin Change User Password
[**changeUserPassword**](UsersApi.md#changeuserpassword) | **PUT** /users/change-user-password | Change User Password
[**createUser**](UsersApi.md#createuser) | **POST** /users/ | Create User
[**listScopes**](UsersApi.md#listscopes) | **GET** /users/list-scopes | List Scopes
[**readUser**](UsersApi.md#readuser) | **GET** /users/{user_id} | Read User
[**readUserMe**](UsersApi.md#readuserme) | **GET** /users/token | Read User Me
[**readUsers**](UsersApi.md#readusers) | **GET** /users/ | Read Users
[**requestPasswordChange**](UsersApi.md#requestpasswordchange) | **POST** /users/request-password-change | Request Password Change
[**resendInvite**](UsersApi.md#resendinvite) | **POST** /users/resend-invite | Resend Invite
[**updateUser**](UsersApi.md#updateuser) | **PUT** /users/{user_id} | Update User


# **adminChangeUserPassword**
> UserOut adminChangeUserPassword(userId, changePassword)

Admin Change User Password

<strong>Scopes: </strong> me,

### Example
```dart
import 'package:regnify_core/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UsersApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final changePassword = ChangePassword(); // ChangePassword | 

try {
    final result = api_instance.adminChangeUserPassword(userId, changePassword);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->adminChangeUserPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **changePassword** | [**ChangePassword**](ChangePassword.md)|  | 

### Return type

[**UserOut**](UserOut.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **changeUserPassword**
> AppResponseModel changeUserPassword(changePasswordWithToken)

Change User Password

### Example
```dart
import 'package:regnify_core/api.dart';

final api_instance = UsersApi();
final changePasswordWithToken = ChangePasswordWithToken(); // ChangePasswordWithToken | 

try {
    final result = api_instance.changeUserPassword(changePasswordWithToken);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->changeUserPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changePasswordWithToken** | [**ChangePasswordWithToken**](ChangePasswordWithToken.md)|  | 

### Return type

[**AppResponseModel**](AppResponseModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUser**
> UserOut createUser(userCreate, adminSignupToken)

Create User

Allows a user to create another user in the system. The user is made active if the correct admin-signup-token is provided, and no email will be sent to the user.                                         <br />                                         <br />                                         <strong>Scopes: </strong> user:create, me,  

### Example
```dart
import 'package:regnify_core/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UsersApi();
final userCreate = UserCreate(); // UserCreate | 
final adminSignupToken = adminSignupToken_example; // String | The correct admin token to use admin only features

try {
    final result = api_instance.createUser(userCreate, adminSignupToken);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userCreate** | [**UserCreate**](UserCreate.md)|  | 
 **adminSignupToken** | **String**| The correct admin token to use admin only features | [optional] 

### Return type

[**UserOut**](UserOut.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listScopes**
> ManySystemScopeOut listScopes()

List Scopes

<strong>Scopes: </strong> me,                                         <br />                                         <br />                                         <strong>Scopes: </strong> me, 

### Example
```dart
import 'package:regnify_core/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UsersApi();

try {
    final result = api_instance.listScopes();
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->listScopes: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ManySystemScopeOut**](ManySystemScopeOut.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readUser**
> UserOut readUser(userId)

Read User

<strong>Scopes: </strong> me,

### Example
```dart
import 'package:regnify_core/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UsersApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.readUser(userId);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->readUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**UserOut**](UserOut.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readUserMe**
> UserOut readUserMe()

Read User Me

<strong>Scopes: </strong> me,

### Example
```dart
import 'package:regnify_core/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UsersApi();

try {
    final result = api_instance.readUserMe();
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->readUserMe: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserOut**](UserOut.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readUsers**
> ManyUsersInDB readUsers(query, skip, limit)

Read Users

<strong>Scopes: </strong> me,

### Example
```dart
import 'package:regnify_core/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UsersApi();
final query = query_example; // String | 
final skip = 56; // int | 
final limit = 56; // int | 

try {
    final result = api_instance.readUsers(query, skip, limit);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->readUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**|  | [optional] 
 **skip** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**ManyUsersInDB**](ManyUsersInDB.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestPasswordChange**
> AppResponseModel requestPasswordChange(email)

Request Password Change

### Example
```dart
import 'package:regnify_core/api.dart';

final api_instance = UsersApi();
final email = email_example; // String | 

try {
    final result = api_instance.requestPasswordChange(email);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->requestPasswordChange: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

[**AppResponseModel**](AppResponseModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resendInvite**
> AppResponseModel resendInvite(email)

Resend Invite

Sends an email to the user on how to access their account again.

### Example
```dart
import 'package:regnify_core/api.dart';

final api_instance = UsersApi();
final email = email_example; // String | 

try {
    final result = api_instance.resendInvite(email);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->resendInvite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

[**AppResponseModel**](AppResponseModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
> UserOut updateUser(userId, userUpdate)

Update User

<strong>Scopes: </strong> me,

### Example
```dart
import 'package:regnify_core/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UsersApi();
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final userUpdate = UserUpdate(); // UserUpdate | 

try {
    final result = api_instance.updateUser(userId, userUpdate);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->updateUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **userUpdate** | [**UserUpdate**](UserUpdate.md)|  | 

### Return type

[**UserOut**](UserOut.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

