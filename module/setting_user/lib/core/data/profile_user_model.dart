import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'profile_user_model.freezed.dart';

part 'profile_user_model.g.dart';

@freezed
class ProfileUserModel with _$ProfileUserModel {
  @JsonSerializable(explicitToJson: true,)
  const factory ProfileUserModel({
    int? act,
    String? otherName,
    String? introduce,
    String? quote,
    List<String?>? phone,
    String? mainPhone,
    Address? address,
    Birthday? birthday,
    Gender? gender,
    Work? work,
  }) = _ProfileUserModel;

  factory ProfileUserModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileUserModelFromJson(json);
}

@freezed
class Address with _$Address {
  @JsonSerializable(explicitToJson: true,)
  const factory Address({
    String? address,
    String? cityName,
    String? zipCode,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
class Birthday with _$Birthday {
  @JsonSerializable(explicitToJson: true,)
  const factory Birthday({
    String? date,
    String? scope,
  }) = _Birthday;

  factory Birthday.fromJson(Map<String, dynamic> json) =>
      _$BirthdayFromJson(json);
}

@freezed
class Gender with _$Gender {
  @JsonSerializable(explicitToJson: true,)
  const factory Gender({
    int? type,
    String? scope,
  }) = _Gender;

  factory Gender.fromJson(Map<String, dynamic> json) => _$GenderFromJson(json);
}

@freezed
class Work with _$Work {
  @JsonSerializable(explicitToJson: true,)
  const factory Work({
    String? id,
    String? name,
    String? address,
    String? scope,
    String? org,
    int? type,
    String? position,
    int? isWork,
    String? from,
    String? to,
    String? description,
    int? show,
  }) = _Work;

  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);
}
