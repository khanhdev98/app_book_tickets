// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_education_or_work_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InfoResumeModel _$$_InfoResumeModelFromJson(Map<String, dynamic> json) =>
    _$_InfoResumeModel(
      work: json['work'] == null
          ? null
          : Work.fromJson(json['work'] as Map<String, dynamic>),
      highSchool: json['highSchool'] == null
          ? null
          : Work.fromJson(json['highSchool'] as Map<String, dynamic>),
      college: json['college'] == null
          ? null
          : Work.fromJson(json['college'] as Map<String, dynamic>),
      currentCity: json['currentCity'] == null
          ? null
          : Work.fromJson(json['currentCity'] as Map<String, dynamic>),
      hometown: json['hometown'] == null
          ? null
          : Work.fromJson(json['hometown'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InfoResumeModelToJson(_$_InfoResumeModel instance) =>
    <String, dynamic>{
      'work': instance.work?.toJson(),
      'highSchool': instance.highSchool?.toJson(),
      'college': instance.college?.toJson(),
      'currentCity': instance.currentCity?.toJson(),
      'hometown': instance.hometown?.toJson(),
    };
