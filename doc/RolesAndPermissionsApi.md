# regnify_core.api.RolesAndPermissionsApi

## Load the API package
```dart
import 'package:regnify_core/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignRole**](RolesAndPermissionsApi.md#assignrole) | **POST** /roles/{role_id}/assign-role | Assign Role
[**createRole**](RolesAndPermissionsApi.md#createrole) | **POST** /roles/ | Create Role
[**deleteRole**](RolesAndPermissionsApi.md#deleterole) | **DELETE** /roles/{role_id} | Delete Role
[**editRole**](RolesAndPermissionsApi.md#editrole) | **PUT** /roles/{role_id} | Edit Role
[**getRole**](RolesAndPermissionsApi.md#getrole) | **GET** /roles/{role_id} | Get Role
[**getRoles**](RolesAndPermissionsApi.md#getroles) | **GET** /roles/ | Get Roles
[**listUsersAssignedToRole**](RolesAndPermissionsApi.md#listusersassignedtorole) | **GET** /roles/{role_id}/list-assigned-users | List Users Assigned To Role
[**unassignRole**](RolesAndPermissionsApi.md#unassignrole) | **POST** /roles/{role_id}/unassign-role | Unassign Role


# **assignRole**
> UserOut assignRole(roleId, userId)

Assign Role

Assigns the role to the specified user.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:create, me,  

### Example
```dart
import 'package:regnify_core/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = RolesAndPermissionsApi();
final roleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.assignRole(roleId, userId);
    print(result);
} catch (e) {
    print('Exception when calling RolesAndPermissionsApi->assignRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleId** | **String**|  | 
 **userId** | **String**|  | 

### Return type

[**UserOut**](UserOut.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRole**
> RoleOut createRole(roleCreate)

Create Role

Allows an admin to create a role in the system.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:create, me,  

### Example
```dart
import 'package:regnify_core/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = RolesAndPermissionsApi();
final roleCreate = RoleCreate(); // RoleCreate | 

try {
    final result = api_instance.createRole(roleCreate);
    print(result);
} catch (e) {
    print('Exception when calling RolesAndPermissionsApi->createRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleCreate** | [**RoleCreate**](RoleCreate.md)|  | 

### Return type

[**RoleOut**](RoleOut.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRole**
> AppResponseModel deleteRole(roleId)

Delete Role

Deletes the role. This endpoint removes the roles from all users that has been previously assigned. The integer returned is the total number of all users the role has been removed from.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:delete, me,  

### Example
```dart
import 'package:regnify_core/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = RolesAndPermissionsApi();
final roleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.deleteRole(roleId);
    print(result);
} catch (e) {
    print('Exception when calling RolesAndPermissionsApi->deleteRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleId** | **String**|  | 

### Return type

[**AppResponseModel**](AppResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editRole**
> RoleOut editRole(roleId, bodyEditRoleRolesRoleIdPut)

Edit Role

Updates a single role                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:update, me,  

### Example
```dart
import 'package:regnify_core/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = RolesAndPermissionsApi();
final roleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final bodyEditRoleRolesRoleIdPut = BodyEditRoleRolesRoleIdPut(); // BodyEditRoleRolesRoleIdPut | 

try {
    final result = api_instance.editRole(roleId, bodyEditRoleRolesRoleIdPut);
    print(result);
} catch (e) {
    print('Exception when calling RolesAndPermissionsApi->editRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleId** | **String**|  | 
 **bodyEditRoleRolesRoleIdPut** | [**BodyEditRoleRolesRoleIdPut**](BodyEditRoleRolesRoleIdPut.md)|  | 

### Return type

[**RoleOut**](RoleOut.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRole**
> RoleOut getRole(roleId)

Get Role

Gets a single role                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:read, me,  

### Example
```dart
import 'package:regnify_core/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = RolesAndPermissionsApi();
final roleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getRole(roleId);
    print(result);
} catch (e) {
    print('Exception when calling RolesAndPermissionsApi->getRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleId** | **String**|  | 

### Return type

[**RoleOut**](RoleOut.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRoles**
> ManyRolesOut getRoles(orderBy, orderDirection, title, query, skip, limit)

Get Roles

Gets all the roles in the system                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:read, me,  

### Example
```dart
import 'package:regnify_core/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = RolesAndPermissionsApi();
final orderBy = ; // OrderBy | 
final orderDirection = ; // OrderDirection | 
final title = title_example; // String | 
final query = query_example; // String | 
final skip = 56; // int | 
final limit = 56; // int | 

try {
    final result = api_instance.getRoles(orderBy, orderDirection, title, query, skip, limit);
    print(result);
} catch (e) {
    print('Exception when calling RolesAndPermissionsApi->getRoles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBy** | [**OrderBy**](.md)|  | [optional] [default to DATE_CREATED]
 **orderDirection** | [**OrderDirection**](.md)|  | [optional] [default to DESC]
 **title** | **String**|  | [optional] 
 **query** | **String**|  | [optional] 
 **skip** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**ManyRolesOut**](ManyRolesOut.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUsersAssignedToRole**
> ManyUserRolesOut listUsersAssignedToRole(roleId)

List Users Assigned To Role

List the users that are assigned to a particular role.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:read, me,  

### Example
```dart
import 'package:regnify_core/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = RolesAndPermissionsApi();
final roleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.listUsersAssignedToRole(roleId);
    print(result);
} catch (e) {
    print('Exception when calling RolesAndPermissionsApi->listUsersAssignedToRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleId** | **String**|  | 

### Return type

[**ManyUserRolesOut**](ManyUserRolesOut.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unassignRole**
> UserOut unassignRole(roleId, userId)

Unassign Role

Unassign the role to the specified user.                                         <br />                                         <br />                                         <strong>Scopes: </strong> role:create, me,  

### Example
```dart
import 'package:regnify_core/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = RolesAndPermissionsApi();
final roleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.unassignRole(roleId, userId);
    print(result);
} catch (e) {
    print('Exception when calling RolesAndPermissionsApi->unassignRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleId** | **String**|  | 
 **userId** | **String**|  | 

### Return type

[**UserOut**](UserOut.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

