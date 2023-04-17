import 'package:flutter/material.dart';
// import 'package:theme/material3/m3_theme_lib.dart';

import '../../core/lang/generate/halo_localizations.dart';

class ButtonCancelSave extends StatelessWidget {
  final void Function()? onPressedCancel;
  final void Function()? onPressedSave;

  const ButtonCancelSave({Key? key, this.onPressedCancel, this.onPressedSave})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: onPressedCancel,
            child: Text(Str.of(context).common_cancel),
          ),
        ),
        // HaloSpacing.normal,
        Expanded(
          child: FilledButton(
            onPressed: onPressedSave,
            child: Text(Str.of(context).common_save),
          ),
        ),
      ],
    );
  }
}
