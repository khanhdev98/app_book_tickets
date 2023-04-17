import 'package:flutter/material.dart';

enum ResumeType { work, highSchool, university, currentCity, hometown}

class Information {
  final String? title;
  String? content;
  void Function()? onEdit;
  void Function(bool? val)? onChangeCheckBox;
  bool? checkBoxValue;
  MaterialStateProperty<Color?>? fillColor;
  ResumeType resumeType;

  Information(
      {this.title,
      this.content,
      this.onEdit,
      this.onChangeCheckBox,
      this.checkBoxValue,
      this.fillColor,
      this.resumeType = ResumeType.university});
}

class CardInformation {
  final String title;
  final List<Information> information;
  final Jobs? job;
  final Education? education;

  CardInformation({
    required this.title,
    this.information = const [],
    this.job,
    this.education,
  });
}

class Jobs {
  final void Function()? onEdit;
  Jobs({this.onEdit});
}

class Education {
  final void Function()? onAddUniversity;
  final void Function()? onAddHighSchool;

  Education({this.onAddUniversity, this.onAddHighSchool});
}
