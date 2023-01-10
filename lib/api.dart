//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library regnify.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/auth_api.dart';
part 'api/roles_and_permissions_api.dart';
part 'api/users_api.dart';

part 'model/access_token.dart';
part 'model/app_response_model.dart';
part 'model/body_edit_role_roles_role_id_put.dart';
part 'model/change_password.dart';
part 'model/change_password_with_token.dart';
part 'model/http_validation_error.dart';
part 'model/location_inner.dart';
part 'model/many_roles_out.dart';
part 'model/many_system_scope_out.dart';
part 'model/many_user_roles_out.dart';
part 'model/many_users_in_db.dart';
part 'model/mini_role_out.dart';
part 'model/mini_user_role_out.dart';
part 'model/order_by.dart';
part 'model/order_direction.dart';
part 'model/profile_out.dart';
part 'model/role_create.dart';
part 'model/role_out.dart';
part 'model/system_scope_out.dart';
part 'model/user_create.dart';
part 'model/user_out.dart';
part 'model/user_role_out.dart';
part 'model/user_update.dart';
part 'model/validation_error.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
