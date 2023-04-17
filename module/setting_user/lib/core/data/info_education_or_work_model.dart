import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:setting_user/core/data/profile_user_model.dart';

part 'info_education_or_work_model.freezed.dart';
part 'info_education_or_work_model.g.dart';

@freezed
class InfoResumeModel with _$InfoResumeModel {
  @JsonSerializable(explicitToJson: true)
  const factory InfoResumeModel({
    Work? work,
    Work? highSchool,
    Work? college,
    Work? currentCity,
    Work? hometown,
  }) = _InfoResumeModel;

  factory InfoResumeModel.fromJson(Map<String, dynamic> json) =>
      _$InfoResumeModelFromJson(json);
}