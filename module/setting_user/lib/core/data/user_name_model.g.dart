// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_name_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserNameModel _$$_UserNameModelFromJson(Map<String, dynamic> json) =>
    _$_UserNameModel(
      firstname: json['nv103'] as String?,
      lastname: json['nv104'] as String?,
      middlename: json['nv133'] as String?,
      password: json['nv109'] as String?,
      idUser: json['pn100'] as String?,
    );

Map<String, dynamic> _$$_UserNameModelToJson(_$_UserNameModel instance) =>
    <String, dynamic>{
      'nv103': instance.firstname,
      'nv104': instance.lastname,
      'nv133': instance.middlename,
      'nv109': instance.password,
      'pn100': instance.idUser,
    };
