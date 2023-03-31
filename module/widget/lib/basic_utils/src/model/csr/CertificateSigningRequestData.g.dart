// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CertificateSigningRequestData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CertificateSigningRequestData _$CertificateSigningRequestDataFromJson(
        Map<String, dynamic> json) =>
    CertificateSigningRequestData(
      subject: (json['subject'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      version: json['version'] as int?,
      signature: json['signature'] as String?,
      signatureAlgorithm: json['signatureAlgorithm'] as String?,
      signatureAlgorithmReadableName:
          json['signatureAlgorithmReadableName'] as String?,
      publicKeyInfo: json['publicKeyInfo'] == null
          ? null
          : SubjectPublicKeyInfo.fromJson(
              json['publicKeyInfo'] as Map<String, dynamic>),
      plain: json['plain'] as String?,
      extensions: json['extensions'] == null
          ? null
          : CertificateSigningRequestExtensions.fromJson(
              json['extensions'] as Map<String, dynamic>),
      certificationRequestInfoSeq:
          json['certificationRequestInfoSeq'] as String?,
      certificationRequestInfo: json['certificationRequestInfo'] == null
          ? null
          : CertificationRequestInfo.fromJson(
              json['certificationRequestInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CertificateSigningRequestDataToJson(
    CertificateSigningRequestData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'certificationRequestInfo', instance.certificationRequestInfo?.toJson());
  writeNotNull('version', instance.version);
  writeNotNull('subject', instance.subject);
  writeNotNull('publicKeyInfo', instance.publicKeyInfo?.toJson());
  writeNotNull('signatureAlgorithm', instance.signatureAlgorithm);
  writeNotNull('signatureAlgorithmReadableName',
      instance.signatureAlgorithmReadableName);
  writeNotNull('signature', instance.signature);
  writeNotNull('plain', instance.plain);
  writeNotNull('extensions', instance.extensions?.toJson());
  writeNotNull(
      'certificationRequestInfoSeq', instance.certificationRequestInfoSeq);
  return val;
}
