// import 'package:flutter/material.dart';
// import 'package:flutter_core/core.dart';
// import 'package:widget/common/dialog/halo_dialog.dart';
// import 'package:content/generate/halo_localizations.dart';
//
// Future<void> checkFailureEditProfile (Failure? failure, BuildContext context) async {
//   if (failure?.isHttpErrorConnection() == true) {
//     HaloDialog.showDialog(context,
//         content: Text(StringApp.of(context).setting_user_message_error_network_connection),
//         title: StringApp.of(context).setting_user_title_error,
//         actionPress: () {
//           Navigator.pop(context);
//           Navigator.pop(context);
//         },
//         barrierDismissible: false
//     );
//   } else {a
//     HaloDialog.showDialog(context,
//         content: Text(StringApp.of(context).notify_error_occurred),
//         title: StringApp.of(context).setting_user_title_error,
//         actionPress: () {
//           Navigator.pop(context);
//           Navigator.pop(context);
//         },
//         barrierDismissible: false
//     );
//   }
// }
