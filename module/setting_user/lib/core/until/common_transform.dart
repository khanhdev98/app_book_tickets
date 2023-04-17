import 'package:flutter_core/core.dart';
import 'package:setting_user/widgets/edit_profile/model/card_info_v2.dart';

import '../data/info_education_or_work_model.dart';
import '../data/profile_user_model.dart';

class CommonTransForm {
  CommonTransForm._();

  static final CommonTransForm _instance = CommonTransForm._();

  static CommonTransForm get I => _instance;

  String? getGender(int? type) {
    switch (type) {
      case 0:
        return "Nam";
      case 1:
        return "Nữ";
      case 2:
        return "khác";
      default:
        return null;
    }
  }

  ResumeType getResumeType(Work? work) {
    if (work?.type == 0) return ResumeType.work;
    if (work?.type == 1) return ResumeType.highSchool;
    if (work?.type == 2) return ResumeType.university;
    if (work?.type == 3) return ResumeType.currentCity;
    if (work?.type == 4) return ResumeType.hometown;
    return ResumeType.university;
  }

  InfoResumeModel? getEducationOrWork(List<Work>? works) {
    List<Work> work = [];
    List<Work> highSchool = [];
    List<Work> college= [];
    List<Work> currentCity= [];
    List<Work> hometown= [];
    if (works != null) {
      work = works.where((element) => element.type == 0).toList();
      highSchool = works.where((element) => element.type == 1).toList();
      college = works.where((element) => element.type == 2).toList();
      currentCity = works.where((element) => element.type == 3).toList();
      hometown = works.where((element) => element.type == 4).toList();
    }
    return InfoResumeModel(
      work: work.getOrNull(0),
      highSchool: highSchool.getOrNull(0),
      college: college.getOrNull(0),
      currentCity: currentCity.getOrNull(0),
      hometown: hometown.getOrNull(0),
    );
  }
}
