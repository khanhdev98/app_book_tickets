import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';
import 'package:theme/theme.dart';

import '../sliding_sheet_0.5.2/src/sheet.dart';
import '../sliding_sheet_0.5.2/src/specs.dart';

class SnappingBottomSheet {
  static showSnappingBottomSheetNewV3(
      BuildContext context,
      String title,
      Widget screen, {
        Widget? footer,
        bool? isCenterTitle = true,
        bool isPaddingContent = true,
        bool isPadding = true,
      }) =>
      showSlidingBottomSheet(
        context,
        builder: (context) {
          return SlidingSheetDialog(
            cornerRadius: 12,
            avoidStatusBar: true,
            duration: const Duration(milliseconds: 300),
            snapSpec: const SnapSpec(
              initialSnap: 0.85,
              snappings: [0.85],
            ),
            footerBuilder:
            footer != null ? (BuildContext context, SheetState state) => footer : null,
            builder: (
                context,
                state,
                ) =>
                Material(
                  type: MaterialType.card,
                  child: ListView(
                    shrinkWrap: true,
                    primary: false,
                    padding: isPaddingContent
                        ? const EdgeInsets.fromLTRB(15, 0, 15, 15)
                        : const EdgeInsets.all(0),
                    children: [screen],
                  ),
                ),
            headerBuilder: (context, state) => _buildHeaderBottomSheeV2(context, state, title,
                isCenterTitle: isCenterTitle, isPadding: isPadding),
          );
        },
      );

  static showSnappingBottomSheetNew(
      BuildContext context, String title, Widget screen,
      {Widget? footer, bool? isCenterTitle = true, SheetController? controller}) async =>
      await showSlidingBottomSheet(
        context,
        builder: (context) {
          return SlidingSheetDialog(
            controller: controller,
            cornerRadius: 12,
            avoidStatusBar: true,
            duration: const Duration(milliseconds: 300),
            snapSpec: const SnapSpec(
              initialSnap: 0.85,
              snappings: [0.85],
            ),
            footerBuilder: footer != null ? (context, state) => footer : null,
            builder: (context, state) {
              return Material(
                type: MaterialType.card,
                child: SafeArea(
                  top: false,
                  child: SingleChildScrollView(
                    child: screen,
                  ),
                ),
              );
            },
            headerBuilder: (context, state) => _buildHeaderBottomSheet(
                context, state, title,
                isCenterTitle: isCenterTitle),
          );
        },
      );

  static _buildHeaderBottomSheeV2(
      BuildContext context,
      SheetState state,
      String title, {
        bool? isCenterTitle = true,
        bool isPadding = true,
      }) =>
      Container(
        padding: isPadding ? const EdgeInsets.only(left: 15, right: 15) : EdgeInsets.zero,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 45,
                height: 6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: context.colorScheme.outline.withOpacity(0.4)),
              ),
            ),
            title.isNotEmpty
                ? const SizedBox(
              height: 15,
            )
                : const SizedBox.shrink(),
            isCenterTitle == true
                ? Center(
              child: Text(title, style: context.dialogTitle),
            )
                : Text(title, style: context.dialogTitle?.primary, textAlign: TextAlign.center),
            const SizedBox(
              height: 15,
            ),
            title.isNotEmpty ? const Divider(height: 1) : const SizedBox.shrink(),
          ],
        ),
      );

  static showSnappingBottomSheet(
          BuildContext context, String title, Widget screen,
          {Widget? footer, bool? isCenterTitle = true,SheetController? controller}) =>
      showSlidingBottomSheet(
        context,
        builder: (context) {
          return SlidingSheetDialog(
            cornerRadius: 12,
            avoidStatusBar: true,
            duration: const Duration(milliseconds: 300),
            snapSpec: const SnapSpec(
              initialSnap: 0.85,
              snappings: [0.85],
            ),
            controller: controller,
            footerBuilder: footer != null ? (context, state) => footer : null,
            builder: (context, state) {
              return Material(
                type: MaterialType.card,
                child: SafeArea(
                  top: false,
                  child: SingleChildScrollView(
                    child: screen,
                  ),
                ),
              );
            },
            headerBuilder: (context, state) => _buildHeaderBottomSheet(
                context, state, title,
                isCenterTitle: isCenterTitle),
          );
        },
      );

  static _buildHeaderBottomSheet(
          BuildContext context, SheetState state, String title,
          {bool? isCenterTitle = true}) =>
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 8),
          Center(
            child: Container(
              width: 32,
              height: 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: context.colorScheme.outline.withOpacity(0.4)),
            ),
          ),
          title.isNotEmpty
              ? const SizedBox(height: 15)
              : const SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: isCenterTitle == true
                ? Center(
                    child: Text(title, style: context.dialogTitle),
                  )
                : Text(
                    title,
                    style: context.dialogTitle?.primary,
                  ),
          ),
          AppSpacing.normal,
          title.isNotEmpty
              ? const Divider(height: 1,)
              : const SizedBox.shrink(),
        ],
      );

  static showSnappingNoHeaderBottomSheet(BuildContext context, Widget screen) async =>
      await showSlidingBottomSheet(
        context,
        builder: (context) {
          return SlidingSheetDialog(
            cornerRadius: 12,
            avoidStatusBar: true,
            duration: const Duration(milliseconds: 300),
            snapSpec: const SnapSpec(
              initialSnap: 0.85,
              snappings: [0.85],
            ),
            builder: (
              context,
              state,
            ) =>
                Material(
              color: context.surfaceColor,
              child: ListView(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                children: [screen],
              ),
            ),
            headerBuilder: (context, state) =>
                _buildPointHeaderBottomSheet(context, state),
          );
        },
      );

  static _buildPointHeaderBottomSheet(BuildContext context, SheetState state) =>
      Container(
        color: context.colorScheme.surface,
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 45,
                height: 6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: context.colorScheme.outline.withOpacity(0.4)),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      );
}
