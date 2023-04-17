// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfoModel _$$_UserInfoModelFromJson(Map<String, dynamic> json) =>
    _$_UserInfoModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      avatar: json['avatar'] == null
          ? null
          : Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
      cover: json['cover'] == null
          ? null
          : Cover.fromJson(json['cover'] as Map<String, dynamic>),
      about: json['about'] == null
          ? null
          : About.fromJson(json['about'] as Map<String, dynamic>),
      alias: json['alias'] as String?,
      lang: json['lang'] as String?,
      isOwner: json['isOwner'] as num?,
      lastName: json['lastName'] as String?,
      middleName: json['middleName'] as String?,
      firstName: json['firstName'] as String?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$$_UserInfoModelToJson(_$_UserInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar?.toJson(),
      'cover': instance.cover?.toJson(),
      'about': instance.about?.toJson(),
      'alias': instance.alias,
      'lang': instance.lang,
      'isOwner': instance.isOwner,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'firstName': instance.firstName,
      'currency': instance.currency,
    };

_$_Avatar _$$_AvatarFromJson(Map<String, dynamic> json) => _$_Avatar(
      id: json['id'] as String?,
      path: json['path'] as String?,
      thumb: json['thumb'] as String?,
      frame: json['frame'] as String?,
    );

Map<String, dynamic> _$$_AvatarToJson(_$_Avatar instance) => <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'thumb': instance.thumb,
      'frame': instance.frame,
    };

_$_Cover _$$_CoverFromJson(Map<String, dynamic> json) => _$_Cover(
      id: json['id'] as String?,
      path: json['path'] as String?,
      thumb: json['thumb'] as String?,
    );

Map<String, dynamic> _$$_CoverToJson(_$_Cover instance) => <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'thumb': instance.thumb,
    };

_$_BirthDayUser _$$_BirthDayUserFromJson(Map<String, dynamic> json) =>
    _$_BirthDayUser(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      scope: json['scope'] as String?,
    );

Map<String, dynamic> _$$_BirthDayUserToJson(_$_BirthDayUser instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'scope': instance.scope,
    };

_$_About _$$_AboutFromJson(Map<String, dynamic> json) => _$_About(
      otherName: json['otherName'] as String?,
      birthday: json['birthday'] == null
          ? null
          : BirthDayUser.fromJson(json['birthday'] as Map<String, dynamic>),
      mainPhone: json['mainPhone'] as String?,
      introduce: json['introduce'] as String?,
      gender: json['gender'] == null
          ? null
          : Gender.fromJson(json['gender'] as Map<String, dynamic>),
      act: json['act'] as int?,
      quote: json['quote'] as String?,
      phone:
          (json['phone'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      works: (json['works'] as List<dynamic>?)
          ?.map((e) => Work.fromJson(e as Map<String, dynamic>))
          .toList(),
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_AboutToJson(_$_About instance) => <String, dynamic>{
      'otherName': instance.otherName,
      'birthday': instance.birthday?.toJson(),
      'mainPhone': instance.mainPhone,
      'introduce': instance.introduce,
      'gender': instance.gender?.toJson(),
      'act': instance.act,
      'quote': instance.quote,
      'phone': instance.phone,
      'address': instance.address?.toJson(),
      'works': instance.works?.map((e) => e.toJson()).toList(),
      'email': instance.email,
    };
