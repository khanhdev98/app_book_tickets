// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// part of 'setting_user_datasource.dart';
//
// // **************************************************************************
// // RetrofitGenerator
// // **************************************************************************
//
// // ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers
//
// class _SettingUserDataSource implements SettingUserDataSource {
//   _SettingUserDataSource(
//     this._dio, {
//     this.baseUrl,
//   });
//
//   final Dio _dio;
//
//   String? baseUrl;
//
//   @override
//   Future<MongoEntity<ProfileUserModel?>> updateProfileUser({param}) async {
//     const _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     queryParameters.removeWhere((k, v) => v == null);
//     final _headers = <String, dynamic>{};
//     final _data = <String, dynamic>{};
//     _data.addAll(param?.toJson() ?? <String, dynamic>{});
//     _data.removeWhere((k, v) => v == null);
//     final _result = await _dio.fetch<Map<String, dynamic>>(
//         _setStreamType<MongoEntity<ProfileUserModel>>(Options(
//       method: 'POST',
//       headers: _headers,
//       extra: _extra,
//     )
//             .compose(
//               _dio.options,
//               'usr/users/socUsrProfUpd/v2',
//               queryParameters: queryParameters,
//               data: _data,
//             )
//             .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
//     final value = MongoEntity<ProfileUserModel?>.fromJson(
//       _result.data!,
//       (json) => json == null
//           ? null
//           : ProfileUserModel.fromJson(json as Map<String, dynamic>),
//     );
//     return value;
//   }
//
//   @override
//   Future<MongoEntity<UserNameModel?>> updateUserName({param}) async {
//     const _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     queryParameters.removeWhere((k, v) => v == null);
//     final _headers = <String, dynamic>{};
//     final _data = <String, dynamic>{};
//     _data.addAll(param?.toJson() ?? <String, dynamic>{});
//     _data.removeWhere((k, v) => v == null);
//     final _result = await _dio.fetch<Map<String, dynamic>>(
//         _setStreamType<MongoEntity<UserNameModel>>(Options(
//       method: 'POST',
//       headers: _headers,
//       extra: _extra,
//     )
//             .compose(
//               _dio.options,
//               'usr/sets/usrSets/v1',
//               queryParameters: queryParameters,
//               data: _data,
//             )
//             .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
//     final value = MongoEntity<UserNameModel?>.fromJson(
//       _result.data!,
//       (json) => json == null
//           ? null
//           : UserNameModel.fromJson(json as Map<String, dynamic>),
//     );
//     return value;
//   }
//
//   @override
//   Future<MongoEntity<UserInfoModel?>> getProfileUser({
//     detail,
//     u,
//   }) async {
//     const _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{
//       r'detail': detail,
//       r'u': u,
//     };
//     queryParameters.removeWhere((k, v) => v == null);
//     final _headers = <String, dynamic>{};
//     final _data = <String, dynamic>{};
//     final _result = await _dio.fetch<Map<String, dynamic>>(
//         _setStreamType<MongoEntity<UserInfoModel>>(Options(
//       method: 'GET',
//       headers: _headers,
//       extra: _extra,
//     )
//             .compose(
//               _dio.options,
//               'esSoc/usr/socUsrInf/v1',
//               queryParameters: queryParameters,
//               data: _data,
//             )
//             .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
//     final value = MongoEntity<UserInfoModel?>.fromJson(
//       _result.data!,
//       (json) => json == null
//           ? null
//           : UserInfoModel.fromJson(json as Map<String, dynamic>),
//     );
//     return value;
//   }
//
//   RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
//     if (T != dynamic &&
//         !(requestOptions.responseType == ResponseType.bytes ||
//             requestOptions.responseType == ResponseType.stream)) {
//       if (T == String) {
//         requestOptions.responseType = ResponseType.plain;
//       } else {
//         requestOptions.responseType = ResponseType.json;
//       }
//     }
//     return requestOptions;
//   }
// }
