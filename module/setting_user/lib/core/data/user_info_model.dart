import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:setting_user/core/data/profile_user_model.dart';

part 'user_info_model.freezed.dart';
part 'user_info_model.g.dart';

@freezed
class UserInfoModel with _$UserInfoModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserInfoModel({
    String? id,
    String? name,
    Avatar? avatar,
    Cover? cover,
    About? about,
    String? alias,
    String? lang,
    num? isOwner,
    String? lastName,
    String? middleName,
    String? firstName,
    String? currency,
  }) = _UserInfoModel;

  factory UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoModelFromJson(json);
}

@freezed
class Avatar with _$Avatar {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Avatar({
    String? id,
    String? path,
    String? thumb,
    String? frame,
  }) = _Avatar;

  factory Avatar.fromJson(Map<String, dynamic> json) =>
      _$AvatarFromJson(json);
}

@freezed
class Cover with _$Cover {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Cover({
    String? id,
    String? path,
    String? thumb,
  }) = _Cover;

  factory Cover.fromJson(Map<String, dynamic> json) =>
      _$CoverFromJson(json);
}

@freezed
class BirthDayUser with _$BirthDayUser {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory BirthDayUser({
    DateTime? date,
    String? scope
  }) = _BirthDayUser;

  factory BirthDayUser.fromJson(Map<String, dynamic> json) =>
      _$BirthDayUserFromJson(json);
}

@freezed
class About with _$About {
  @JsonSerializable(explicitToJson: true)
  const factory About({
    String? otherName,
    BirthDayUser? birthday,
    String? mainPhone,
    String? introduce,
    Gender? gender,
    int? act,
    String? quote,
    List<String?>? phone,
    Address? address,
    List<Work>? works,
    String? email,
  }) = _About;

  factory About.fromJson(Map<String, dynamic> json) =>
      _$AboutFromJson(json);
}
