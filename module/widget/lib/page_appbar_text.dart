import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme/material3/m3_theme_lib.dart';

/// scaffold widger build base for project
class PageScaffoldAppbarText extends StatelessWidget {
  final String? titleString;
  final String? subTitle;
  final bool? isCenterTitle;
  final Object? iconData;
  final VoidCallback? onLeadingAction;
  final Future<bool> Function()? backScope;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final Widget? action;
  final bool? hideAppbar;
  final bool? hideSpaceLeading;
  final bool? hideLeading;
  final double? elevation;
  final bool isPushContentWhenKeyboardShow;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Widget? bottomSheet;
  Widget? _iconLeading;
  ThemeData? themeData;
  final Widget? titleWidget;
  final Widget? subTitleWidget;
  final double? height;
  PageScaffoldAppbarText({
    Key? key,
    required this.body,
    this.isCenterTitle = false,
    this.iconData = Icons.close,
    this.action,
    this.subTitle,
    this.titleString,
    this.onLeadingAction,
    this.backScope,
    this.themeData,
    this.elevation,
    this.bottomNavigationBar,
    this.hideAppbar = false,
    this.floatingActionButton,
    this.backgroundColor,
    this.margin,
    this.padding,
    this.hideSpaceLeading = false,
    this.hideLeading = false,
    this.isPushContentWhenKeyboardShow = true,
    this.subTitleWidget,
    this.height,
    this.titleWidget,
    this.bottomSheet,
  }) : super(key: key) {
    if (iconData is String) {
      _iconLeading = ImageIcon(AssetImage(iconData as String));
    } else if (iconData is IconData) {
      _iconLeading = Icon(iconData as IconData);
    }
    else {
      throw Exception("icon type must string or iconData");
    }
  }

  bool get haveSubtitle => subTitle != null || subTitleWidget != null;

  @override
  Widget build(BuildContext context) => _buildBody(context);

  Widget _buildBody(BuildContext context) {
    return Theme(
      data: themeData ?? Theme.of(context),
      child: WillPopScope(
        onWillPop: _popScope,
        child: SafeArea(
          bottom: Platform.isAndroid,
          child: Scaffold(
            appBar: hideAppbar == false ? _appbar(context) : null,
            body: Container(
              margin: margin ??
                  EdgeInsets.only(
                      bottom: Platform.isAndroid ? MediaQuery.of(context).padding.bottom : 0),
              padding: padding,
              child: body,
            ),
            bottomNavigationBar: bottomNavigationBar,
            floatingActionButton: floatingActionButton,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterDocked,
            resizeToAvoidBottomInset: isPushContentWhenKeyboardShow,
            extendBody: isPushContentWhenKeyboardShow,
            bottomSheet: bottomSheet,
          ),
        ),
      ),
    );
  }

  AppBar _appbar(BuildContext context) => AppBar(
        toolbarHeight: height ?? HaloSize.appBarHeight,
        elevation: elevation ?? 0.5,

        ///designer : if appbar have [title,subtitle] add divider into
        bottom: (haveSubtitle
            ? const PreferredSize(
                child: Divider(),
                preferredSize: Size.fromHeight(4.0))
            : null),

        ///designer : if appbar have [title,subtitle] then remove shadow
        shadowColor: Colors.black.withOpacity(!haveSubtitle ? 0.6 : 0),
        actions: action != null ? [action!] : null,
        title: !haveSubtitle
            ? titleWidget ?? Text(
                titleString ?? '',
                style: context.appBarTitle,
              )
            : _subTitle(context),
        leadingWidth: hideSpaceLeading == true ? 0 : kToolbarHeight,
        leading: hideLeading == true
            ? const SizedBox.shrink()
            : _leadingIcon(context),
        centerTitle: isCenterTitle ?? false,
        systemOverlayStyle: getSystemOverlay(Theme.of(context).brightness == Brightness.dark),
      );

  Widget _subTitle(BuildContext context) => Column(
        children: [
          titleWidget ?? Text(titleString ?? ""),
          subTitleWidget ??
              Text(subTitle ?? ""),
        ],
      );

  Widget _leadingIcon(BuildContext context) => IconButton(
        splashRadius: 28,
        onPressed: () async {
          if (backScope != null) {
            await backScope?.call();
            return;
          }
          if (onLeadingAction != null) {
            onLeadingAction?.call();
            return;
          }
          Navigator.of(context).pop();
        },
        icon: _iconLeading ?? const Icon(Icons.clear_outlined),
      );

  Future<bool> _popScope() async {
    if (backScope != null) {
      return await backScope!.call();
    }
    onLeadingAction?.call();
    return Future.value(true);
  }
}
