import 'package:flutter/material.dart';

enum ResumeType { work, highSchool, university, currentCity, hometown }

class Information {
  final String? title;
  final String? content;
  void Function()? onAddOrEdit;
  final Function(bool? val)? onChangeCheckBox;
  bool? checkBoxValue;
  MaterialStateProperty<Color?>? fillColor;
  bool? isMail;

  Information(
      {this.title, this.content, this.onChangeCheckBox, this.checkBoxValue, this.fillColor, this.onAddOrEdit, this.isMail});
}

class CardInformation {
  final Widget? title;
  final List<Information> information;

  CardInformation({
    required this.title,
    this.information = const [],
  });


}

class InfoUserTag extends Information {
  final void Function()? onAdd;

  InfoUserTag({
    this.onAdd,String? title}) : super(title: title);
}

class InfoUserEdit extends Information {
  void Function()? onEdit;
  ResumeType resumeType;

  InfoUserEdit(
      {this.onEdit,
        this.resumeType = ResumeType.university,
      String? content,
      String? title,
      Function(bool? val)? onChangeCheckBox,
      bool? checkBoxValue,
      MaterialStateProperty<Color?>? fillColor})
      : super(
    content: content,
            title: title,
            checkBoxValue: checkBoxValue,
            fillColor: fillColor,
            onChangeCheckBox: onChangeCheckBox);


}
