import 'package:flutter/material.dart';
import 'package:flutter_core/core.dart';
// import 'package:theme/material3/m3_theme_lib.dart';
// import 'package:widget/check_box/halo_checkbox.dart';
import '../../../resource/gen/assets.gen.dart';
import '../../core/lang/generate/halo_localizations.dart';
import 'model/card_info_v2.dart';

///Code lai
///chung thi khong nen de widget biet den nhau !
///man nay chi can biet model [ title, list array]
class CardInfoItem extends StatefulWidget {
  final CardInformation cardInfo;

  const CardInfoItem({Key? key, required this.cardInfo}) : super(key: key);

  @override
  State<CardInfoItem> createState() => _CardInfoItemState();
}

class _CardInfoItemState extends State<CardInfoItem> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
      child: Padding(
        padding: EdgeInsets.only(top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: widget.cardInfo.title ?? const SizedBox.shrink(),
            ),
            SizedBox(height: 16,),// HaloSpacing.normal,
            Column(
              children: widget.cardInfo.information.map((info) {
                return _buildRow(context, info);
              }).toList(),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildRow(BuildContext context, Information information) {
    Widget result = _fieldCommon(information, context);
    if (information is InfoUserEdit) {
      return result = _fieldEdit(information, context);
    }
    if (information is InfoUserTag) {
      return result = _fieldAdd(information);
    }
    return result;
  }

  Widget _fieldCommon(Information information, BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: information.content.isNotNullOrEmpty()
                ? _contentWithCheckBox(information)
                : Padding(
                    padding: EdgeInsets.only(
                        left: 16, bottom: 16, top: information.isMail == true ? 6 : 0),
                    child: Text(information.title ?? ""),
                  )),
        information.isMail == true
            ? const SizedBox.shrink()
            : Padding(
                padding: const EdgeInsets.only(right: 0),
                child: information.content.isNotNullOrEmpty()
                    ? IconButton(
                        onPressed: information.onAddOrEdit,
                        icon: SettingUserAssets.lib.resource.assets.images.edit.image())
                    : TextButton(
                        onPressed: information.onAddOrEdit,
                        child: Text(Str.of(context).setting_uer_add),
                      ))
      ],
    );
  }

  Widget _contentWithCheckBox(Information information) {
    return information.isMail == true
        ? Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text("${information.title}: ${information.content}", maxLines: 2),
          )
        : Row(
            children: [
              // HaloCheckbox(
              //   onChanged: (val) {
              //     information.onChangeCheckBox?.call(val);
              //     setState(() {
              //       information.checkBoxValue = val!;
              //     });
              //   },
              //   value: information.checkBoxValue ?? false,
              //   fillColor: information.fillColor,
              // ),
              Expanded(child: Text("${information.title}: ${information.content}", maxLines: 2)),
            ],
          );
  }

  Widget _contentEdit(InfoUserEdit infoUserEdit) {
    return Row(
      children: [
        // HaloCheckbox(
        //   onChanged: (val) {
        //     infoUserEdit.onChangeCheckBox?.call(val);
        //     setState(() {
        //       infoUserEdit.checkBoxValue = val!;
        //     });
        //   },
        //   value: infoUserEdit.checkBoxValue ?? false,
        //   fillColor: infoUserEdit.fillColor,
        // ),
        Expanded(
          child: Text(infoUserEdit.content ?? "", maxLines: 2),
        ),
      ],
    );
  }

  Widget _fieldAdd(InfoUserTag information) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Text(information.title ?? ""),
          ),
        ),
        TextButton(
          onPressed: information.onAdd,
          child: Text(Str.of(context).setting_uer_add),
        )
      ],
    );
  }

  Widget _fieldEdit(InfoUserEdit information, BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _contentEdit(information),
        ),
        _buttonEdit(information)
      ],
    );
  }

  TextButton _buttonEdit(InfoUserEdit information) {
    return TextButton(
      onPressed: information.onEdit,
      child: IconButton(
          onPressed: information.onEdit,
          icon: SettingUserAssets.lib.resource.assets.images.edit.image()),
    );
  }
}
