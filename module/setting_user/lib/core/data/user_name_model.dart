import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_name_model.freezed.dart';
part 'user_name_model.g.dart';

@freezed
class UserNameModel with _$UserNameModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserNameModel({
    @JsonKey(name: "nv103") String? firstname,
    @JsonKey(name: "nv104") String? lastname,
    @JsonKey(name: "nv133") String? middlename,
    @JsonKey(name: "nv109") String? password,
    @JsonKey(name: "pn100") String? idUser,
  }) = _UserNameModel;

  factory UserNameModel.fromJson(Map<String, dynamic> json) =>
      _$UserNameModelFromJson(json);
}