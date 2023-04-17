// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_name_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserNameModel _$UserNameModelFromJson(Map<String, dynamic> json) {
  return _UserNameModel.fromJson(json);
}

/// @nodoc
mixin _$UserNameModel {
  @JsonKey(name: "nv103")
  String? get firstname => throw _privateConstructorUsedError;
  @JsonKey(name: "nv104")
  String? get lastname => throw _privateConstructorUsedError;
  @JsonKey(name: "nv133")
  String? get middlename => throw _privateConstructorUsedError;
  @JsonKey(name: "nv109")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "pn100")
  String? get idUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserNameModelCopyWith<UserNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNameModelCopyWith<$Res> {
  factory $UserNameModelCopyWith(
          UserNameModel value, $Res Function(UserNameModel) then) =
      _$UserNameModelCopyWithImpl<$Res, UserNameModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "nv103") String? firstname,
      @JsonKey(name: "nv104") String? lastname,
      @JsonKey(name: "nv133") String? middlename,
      @JsonKey(name: "nv109") String? password,
      @JsonKey(name: "pn100") String? idUser});
}

/// @nodoc
class _$UserNameModelCopyWithImpl<$Res, $Val extends UserNameModel>
    implements $UserNameModelCopyWith<$Res> {
  _$UserNameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? middlename = freezed,
    Object? password = freezed,
    Object? idUser = freezed,
  }) {
    return _then(_value.copyWith(
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      middlename: freezed == middlename
          ? _value.middlename
          : middlename // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserNameModelCopyWith<$Res>
    implements $UserNameModelCopyWith<$Res> {
  factory _$$_UserNameModelCopyWith(
          _$_UserNameModel value, $Res Function(_$_UserNameModel) then) =
      __$$_UserNameModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "nv103") String? firstname,
      @JsonKey(name: "nv104") String? lastname,
      @JsonKey(name: "nv133") String? middlename,
      @JsonKey(name: "nv109") String? password,
      @JsonKey(name: "pn100") String? idUser});
}

/// @nodoc
class __$$_UserNameModelCopyWithImpl<$Res>
    extends _$UserNameModelCopyWithImpl<$Res, _$_UserNameModel>
    implements _$$_UserNameModelCopyWith<$Res> {
  __$$_UserNameModelCopyWithImpl(
      _$_UserNameModel _value, $Res Function(_$_UserNameModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? middlename = freezed,
    Object? password = freezed,
    Object? idUser = freezed,
  }) {
    return _then(_$_UserNameModel(
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      middlename: freezed == middlename
          ? _value.middlename
          : middlename // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserNameModel with DiagnosticableTreeMixin implements _UserNameModel {
  const _$_UserNameModel(
      {@JsonKey(name: "nv103") this.firstname,
      @JsonKey(name: "nv104") this.lastname,
      @JsonKey(name: "nv133") this.middlename,
      @JsonKey(name: "nv109") this.password,
      @JsonKey(name: "pn100") this.idUser});

  factory _$_UserNameModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserNameModelFromJson(json);

  @override
  @JsonKey(name: "nv103")
  final String? firstname;
  @override
  @JsonKey(name: "nv104")
  final String? lastname;
  @override
  @JsonKey(name: "nv133")
  final String? middlename;
  @override
  @JsonKey(name: "nv109")
  final String? password;
  @override
  @JsonKey(name: "pn100")
  final String? idUser;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserNameModel(firstname: $firstname, lastname: $lastname, middlename: $middlename, password: $password, idUser: $idUser)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserNameModel'))
      ..add(DiagnosticsProperty('firstname', firstname))
      ..add(DiagnosticsProperty('lastname', lastname))
      ..add(DiagnosticsProperty('middlename', middlename))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('idUser', idUser));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserNameModel &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.middlename, middlename) ||
                other.middlename == middlename) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.idUser, idUser) || other.idUser == idUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstname, lastname, middlename, password, idUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserNameModelCopyWith<_$_UserNameModel> get copyWith =>
      __$$_UserNameModelCopyWithImpl<_$_UserNameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserNameModelToJson(
      this,
    );
  }
}

abstract class _UserNameModel implements UserNameModel {
  const factory _UserNameModel(
      {@JsonKey(name: "nv103") final String? firstname,
      @JsonKey(name: "nv104") final String? lastname,
      @JsonKey(name: "nv133") final String? middlename,
      @JsonKey(name: "nv109") final String? password,
      @JsonKey(name: "pn100") final String? idUser}) = _$_UserNameModel;

  factory _UserNameModel.fromJson(Map<String, dynamic> json) =
      _$_UserNameModel.fromJson;

  @override
  @JsonKey(name: "nv103")
  String? get firstname;
  @override
  @JsonKey(name: "nv104")
  String? get lastname;
  @override
  @JsonKey(name: "nv133")
  String? get middlename;
  @override
  @JsonKey(name: "nv109")
  String? get password;
  @override
  @JsonKey(name: "pn100")
  String? get idUser;
  @override
  @JsonKey(ignore: true)
  _$$_UserNameModelCopyWith<_$_UserNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}
