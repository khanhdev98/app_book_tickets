// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileUserModel _$$_ProfileUserModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileUserModel(
      act: json['act'] as int?,
      otherName: json['otherName'] as String?,
      introduce: json['introduce'] as String?,
      quote: json['quote'] as String?,
      phone:
          (json['phone'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      mainPhone: json['mainPhone'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      birthday: json['birthday'] == null
          ? null
          : Birthday.fromJson(json['birthday'] as Map<String, dynamic>),
      gender: json['gender'] == null
          ? null
          : Gender.fromJson(json['gender'] as Map<String, dynamic>),
      work: json['work'] == null
          ? null
          : Work.fromJson(json['work'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileUserModelToJson(_$_ProfileUserModel instance) =>
    <String, dynamic>{
      'act': instance.act,
      'otherName': instance.otherName,
      'introduce': instance.introduce,
      'quote': instance.quote,
      'phone': instance.phone,
      'mainPhone': instance.mainPhone,
      'address': instance.address?.toJson(),
      'birthday': instance.birthday?.toJson(),
      'gender': instance.gender?.toJson(),
      'work': instance.work?.toJson(),
    };

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      address: json['address'] as String?,
      cityName: json['cityName'] as String?,
      zipCode: json['zipCode'] as String?,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'address': instance.address,
      'cityName': instance.cityName,
      'zipCode': instance.zipCode,
    };

_$_Birthday _$$_BirthdayFromJson(Map<String, dynamic> json) => _$_Birthday(
      date: json['date'] as String?,
      scope: json['scope'] as String?,
    );

Map<String, dynamic> _$$_BirthdayToJson(_$_Birthday instance) =>
    <String, dynamic>{
      'date': instance.date,
      'scope': instance.scope,
    };

_$_Gender _$$_GenderFromJson(Map<String, dynamic> json) => _$_Gender(
      type: json['type'] as int?,
      scope: json['scope'] as String?,
    );

Map<String, dynamic> _$$_GenderToJson(_$_Gender instance) => <String, dynamic>{
      'type': instance.type,
      'scope': instance.scope,
    };

_$_Work _$$_WorkFromJson(Map<String, dynamic> json) => _$_Work(
      id: json['id'] as String?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      scope: json['scope'] as String?,
      org: json['org'] as String?,
      type: json['type'] as int?,
      position: json['position'] as String?,
      isWork: json['isWork'] as int?,
      from: json['from'] as String?,
      to: json['to'] as String?,
      description: json['description'] as String?,
      show: json['show'] as int?,
    );

Map<String, dynamic> _$$_WorkToJson(_$_Work instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'scope': instance.scope,
      'org': instance.org,
      'type': instance.type,
      'position': instance.position,
      'isWork': instance.isWork,
      'from': instance.from,
      'to': instance.to,
      'description': instance.description,
      'show': instance.show,
    };
