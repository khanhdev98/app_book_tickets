// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:theme/theme.dart';
// import 'package:widget/text_field/type_input_password.dart';
// import 'package:widget/text_field/type_input_text.dart';
//
//
// enum StyleInput { underline, outlineBorder }
//
// enum TypeInput {
//   email,
//   name,
//   password,
//   text,
//   date,
//   locate,
//   dateRange,
//   birthDate,
//   textArea,
//   number,
//   decimal
// }
//
// class TextFieldCommon extends StatefulWidget {
//   TextEditingController? textEditingController;
//   bool? isCenter;
//   final TypeInput typeInput;
//
//   String? name;
//   String? textErrRequire;
//
//   String? labelText;
//   Function(String?)? validate;
//   bool? isRequire;
//   Function(String?)? onChange;
//   int maxLine = 1;
//   StyleInput? styleInput;
//   bool autoValidate;
//   String? hintText;
//   Widget? labelWidget;
//   List<dynamic>? listData;
//   TextInputAction? textInputAction;
//   TextAlign? textAlign;
//   int? errorMaxLines;
//   Widget? prefixIcon;
//   bool? alwaysValidate;
//   bool disableInput;
//   bool? disable;
//   EdgeInsetsGeometry? contentPadding;
//
//   /// chi ap dung khi required == true;
//   bool? unShowStar;
//
//   ///type date
//   // HaloDateTime? fromDate;
//   // HaloDateTime? endDate;
//   // HaloDateTime? initDate;
//   Function(DateTime)? onChangeDate;
//   DateTime? dataDate;
//
//   ///type text
//   String? dataText;
//
//   ///type password
//   bool? showPassword;
//   String? textCompareValidate;
//   bool? autoFocus;
//   Function(String)? onFieldSubmitted;
//   FocusNode? focusNode;
//   void Function()? onTap;
//
//   List<TextInputFormatter>? formatters;
//
//   TextFieldCommon.password(
//       {Key? key,
//       this.validate,
//       this.autoValidate = true,
//       this.prefixIcon,
//       this.disable,
//       this.textAlign,
//       this.textErrRequire,
//       this.name,
//       this.styleInput = StyleInput.underline,
//       this.isCenter = false,
//       this.showPassword = false,
//       this.autoFocus = false,
//       this.onFieldSubmitted,
//       this.textInputAction,
//       this.focusNode,
//       this.onTap,
//       this.disableInput = false,
//       this.textEditingController,
//       this.labelText})
//       : typeInput = TypeInput.password,
//         super(key: key);
//
//   TextFieldCommon.text(
//       {Key? key,
//         this.validate,
//         this.formatters,
//         this.alwaysValidate,
//         this.autoValidate = true,
//         this.prefixIcon,
//         this.textAlign,
//         this.textErrRequire,
//         this.name,
//         this.unShowStar,
//         this.autoFocus,
//         this.onChange,
//         this.disable,
//         this.styleInput = StyleInput.underline,
//         this.hintText,
//         this.focusNode,
//         this.isRequire = false,
//         this.isCenter = false,
//         this.textEditingController,
//         this.labelText,
//         this.errorMaxLines,
//         this.disableInput = false})
//       : typeInput = TypeInput.text,
//         super(key: key);
//
//   TextFieldCommon.name(
//       {Key? key,
//       this.validate,
//       this.formatters,
//       this.alwaysValidate,
//       this.autoValidate = true,
//       this.prefixIcon,
//       this.textAlign,
//       this.textErrRequire,
//       this.name,
//       this.unShowStar,
//       this.autoFocus,
//       this.onChange,
//       this.disable,
//       this.styleInput = StyleInput.underline,
//       this.hintText,
//       this.focusNode,
//       this.isRequire = false,
//       this.isCenter = false,
//       this.textEditingController,
//       this.labelText,
//       this.errorMaxLines,
//       this.disableInput = false})
//       : typeInput = TypeInput.name,
//         super(key: key);
//
//   TextFieldCommon.email(
//       {Key? key,
//       this.validate,
//       this.alwaysValidate,
//       this.autoValidate = true,
//       this.prefixIcon,
//       this.textAlign,
//       this.textErrRequire,
//       this.name,
//       this.unShowStar,
//       this.autoFocus,
//       this.onChange,
//       this.disable,
//       this.styleInput = StyleInput.underline,
//       this.hintText,
//       this.focusNode,
//       this.isRequire = false,
//       this.isCenter = false,
//       this.textEditingController,
//       this.labelText,
//       this.disableInput = false,
//       this.errorMaxLines})
//       : typeInput = TypeInput.email,
//         super(key: key);
//
//   TextFieldCommon.number(
//       {Key? key,
//       this.isCenter = false,
//       this.alwaysValidate,
//       this.unShowStar,
//       this.autoValidate = true,
//       this.prefixIcon,
//       this.textAlign,
//       this.textErrRequire,
//       this.name,
//       this.autoFocus,
//       this.onChange,
//       this.focusNode,
//       this.validate,
//       this.hintText,
//       this.disable,
//       this.styleInput = StyleInput.underline,
//       this.isRequire = false,
//       this.textEditingController,
//       this.disableInput = false,
//       this.labelText})
//       : typeInput = TypeInput.number,
//         super(key: key);
//
//   TextFieldCommon.decimal(
//       {Key? key,
//       this.isCenter = false,
//       this.alwaysValidate,
//       this.unShowStar,
//       this.autoValidate = true,
//       this.prefixIcon,
//       this.autoFocus,
//       this.focusNode,
//       this.textAlign,
//       this.textErrRequire,
//       this.name,
//       this.onChange,
//       this.validate,
//       this.hintText,
//       this.disable,
//       this.styleInput = StyleInput.underline,
//       this.isRequire = false,
//       this.textEditingController,
//       this.formatters,
//       this.contentPadding,
//       this.disableInput = false,
//       this.labelText})
//       : typeInput = TypeInput.decimal,
//         super(key: key);
//
//   TextFieldCommon.date(
//       {Key? key,
//       this.onChangeDate,
//       this.autoValidate = true,
//       this.disable,
//       this.textAlign,
//       this.textEditingController,
//       this.styleInput = StyleInput.underline,
//       this.validate,
//       // this.fromDate,
//       // this.endDate,
//       this.isCenter = false,
//       // this.initDate,
//       this.textErrRequire,
//       this.name,
//       this.dataDate,
//       this.isRequire = false,
//       this.formatters,
//       this.disableInput = false,
//       this.labelText})
//       : typeInput = TypeInput.date,
//         super(key: key);
//
//   TextFieldCommon.dateRange(
//       {Key? key,
//       this.styleInput = StyleInput.underline,
//       this.autoValidate = true,
//       this.validate,
//       this.textAlign,
//       this.disable,
//       this.textErrRequire,
//       this.isCenter = false,
//       this.name,
//       this.dataDate,
//       this.isRequire = false,
//       this.disableInput = false,
//       this.labelText})
//       : typeInput = TypeInput.dateRange,
//         super(key: key);
//
//   TextFieldCommon.birthDate(
//       {Key? key,
//       this.hintText,
//       this.textAlign,
//       this.autoValidate = true,
//       this.disable,
//       this.unShowStar,
//       this.textErrRequire,
//       this.isCenter = false,
//       this.name,
//       this.textEditingController,
//       this.styleInput = StyleInput.underline,
//       this.validate,
//       this.dataDate,
//       this.disableInput = false,
//       this.isRequire = false,
//       this.labelText})
//       : typeInput = TypeInput.birthDate,
//         super(key: key);
//
//   TextFieldCommon.locate(
//       {Key? key,
//       this.labelText,
//       this.labelWidget,
//       this.prefixIcon,
//       this.autoValidate = true,
//       this.textAlign,
//       this.isCenter = false,
//       this.onChange,
//       this.disable,
//       this.textErrRequire,
//       this.name,
//       this.textEditingController,
//       this.validate,
//       this.styleInput = StyleInput.underline,
//       this.listData,
//       this.disableInput = false,
//       this.isRequire = false})
//       : typeInput = TypeInput.locate,
//         super(key: key);
//
//   TextFieldCommon.textArea(
//       {Key? key,
//       this.validate,
//       this.formatters,
//       this.textErrRequire,
//       this.onChange,
//       this.autoValidate = true,
//       this.name,
//       this.autoFocus,
//       this.focusNode,
//       this.isCenter = false,
//       this.textAlign,
//       this.hintText,
//       this.styleInput = StyleInput.underline,
//       this.isRequire = false,
//       this.textEditingController,
//       this.labelText,
//       this.disableInput = false,
//       required this.maxLine})
//       : typeInput = TypeInput.textArea,
//         super(key: key);
//
//   @override
//   State<TextFieldCommon> createState() => TextFieldCommonState();
// }
//
// class TextFieldCommonState extends State<TextFieldCommon> {
//   late TextEditingController _controller;
//   // final GlobalKey<TextInputDateState> _keyDate = GlobalKey<TextInputDateState>();
//   // final GlobalKey<TextInputBirthDateState> _keyBirthDate = GlobalKey<TextInputBirthDateState>();
//
//   String get value => _controller.text;
//
//   /// chi app dung cho dateTime, birthDay
//   // HaloDateTime? get valueDate => _keyDate.currentState?.valueDate();
//   //
//   // HaloDateTime? get valueBirthDay => _keyBirthDate.currentState?.valueDate();
//
//   @override
//   void initState() {
//     _controller = widget.textEditingController ?? TextEditingController();
//     super.initState();
//   }
//
//   Text hintText() => Text.rich(TextSpan(children: [
//         TextSpan(
//           text: widget.labelText,
//           style: context.labelLarge,
//         ),
//         widget.isRequire == true && widget.unShowStar != true
//             ? TextSpan(
//                 text: '*',
//                 style: context.bodyLarge?.notice,
//               )
//             : const TextSpan(text: '')
//       ]));
//
//   @override
//   Widget build(BuildContext context) {
//     final String? lableText = widget.labelText ?? (widget.labelWidget != null ? null : "");
//     InputDecoration inputDecoration;
//     if (widget.styleInput == StyleInput.underline) {
//       inputDecoration = _inputDecorationFilled();
//     } else {
//       inputDecoration = _textDecorationOutline();
//     }
//
//     if (widget.disableInput) {
//       widget.disable = true;
//     }
//
//     switch (widget.typeInput) {
//       case TypeInput.password:
//         return TextInputPassword(
//           autoValidate: widget.autoValidate,
//           disable: widget.disable,
//           textAlign: widget.isCenter == true ? TextAlign.center : widget.textAlign,
//           textErrRequire: widget.textErrRequire,
//           validate: widget.validate,
//           inputDecoration: inputDecoration,
//           showPassword: widget.showPassword,
//           controller: _controller,
//           autoFocus: widget.autoFocus ?? false,
//           textInputAction: widget.textInputAction,
//           onFieldSubmitted: widget.onFieldSubmitted,
//           focusNode: widget.focusNode,
//           onTap: widget.onTap,
//         );
//       case TypeInput.text:
//         return TextInputText(
//           formatters: widget.formatters,
//           autoValidate: widget.autoValidate,
//           autoFocus: widget.autoFocus,
//           focusNode: widget.focusNode,
//           disable: widget.disable,
//           textAlign: widget.isCenter == true ? TextAlign.center : widget.textAlign,
//           textErrRequire: widget.textErrRequire,
//           onChange: widget.onChange,
//           controller: _controller,
//           validate: widget.validate,
//           inputDecoration: inputDecoration,
//           isRequire: widget.isRequire,
//         );
//       case TypeInput.email:
//         return TextInputText(
//           isEmail: true,
//           autoValidate: widget.autoValidate,
//           autoFocus: widget.autoFocus,
//           focusNode: widget.focusNode,
//           disable: widget.disable,
//           textAlign: widget.isCenter == true ? TextAlign.center : widget.textAlign,
//           textErrRequire: widget.textErrRequire,
//           onChange: widget.onChange,
//           controller: _controller,
//           validate: widget.validate,
//           textCapitalization: TextCapitalization.none,
//           inputDecoration: inputDecoration,
//           isRequire: widget.isRequire,
//         );
//       case TypeInput.number:
//         return TextInputText(
//           autoValidate: widget.autoValidate,
//           autoFocus: widget.autoFocus,
//           focusNode: widget.focusNode,
//           textAlign: widget.isCenter == true ? TextAlign.center : widget.textAlign,
//           textErrRequire: widget.textErrRequire,
//           disable: widget.disable,
//           onChange: widget.onChange,
//           controller: _controller,
//           isNumber: true,
//           validate: widget.validate,
//           inputDecoration: inputDecoration,
//           isRequire: widget.isRequire,
//         );
//       case TypeInput.decimal:
//         return TextInputText(
//           alwaysValidate: widget.alwaysValidate,
//           autoValidate: widget.autoValidate,
//           autoFocus: widget.autoFocus,
//           focusNode: widget.focusNode,
//           textAlign: widget.isCenter == true ? TextAlign.center : widget.textAlign,
//           textErrRequire: widget.textErrRequire,
//           disable: widget.disable,
//           onChange: widget.onChange,
//           controller: _controller,
//           validate: widget.validate,
//           inputDecoration: inputDecoration,
//           isRequire: widget.isRequire,
//           isDecimal: true,
//           formatters: [...?widget.formatters],
//         );
//
//       case TypeInput.name:
//         return TextInputText(
//           formatters: widget.formatters,
//           autoValidate: widget.autoValidate,
//           textCapitalization: TextCapitalization.words,
//           autoFocus: widget.autoFocus,
//           focusNode: widget.focusNode,
//           isName: true,
//           disable: widget.disable,
//           textAlign: widget.isCenter == true ? TextAlign.center : widget.textAlign,
//           textErrRequire: widget.textErrRequire,
//           onChange: widget.onChange,
//           controller: _controller,
//           validate: widget.validate,
//           inputDecoration: inputDecoration,
//           isRequire: widget.isRequire,
//         );
//     }
//   }
//
//   /// uu tiên label widget nếu label widget == null thì label mới được setting vào
//   _labelText() {
//     if (widget.labelWidget != null) {
//       return null;
//     }
//     if (widget.labelText == null) {
//       return null;
//     }
//     return "${widget.labelText}${_labelTextMask()}";
//   }
//
//   _labelTextMask() {
//     return widget.isRequire == true && widget.unShowStar != true ? ' (*)' : '';
//   }
//
//   _inputDecorationFilled() {
//     final theme = Theme.of(context).filledInputDecoration();
//     return const InputDecoration().applyDefaults(theme).copyWith(
//           labelText: _labelText(),
//           hintText: widget.hintText,
//           hintMaxLines: 1,
//           errorMaxLines: 2,
//           alignLabelWithHint: false,
//           prefixIcon: widget.prefixIcon != null
//               ? Padding(
//                   padding: const EdgeInsets.only(left: 16, right: 8),
//                   child: widget.prefixIcon,
//                 )
//               : const SizedBox.shrink(),
//           prefixIconConstraints: widget.prefixIcon != null
//               ? const BoxConstraints(maxHeight: 48, maxWidth: 200, minWidth: 16)
//               : const BoxConstraints(maxHeight: 48, maxWidth: 16, minWidth: 16),
//           label: widget.labelWidget,
//         );
//   }
//
//   _textDecorationOutline() {
//     final theme = Theme.of(context).outlineInputDecoration();
//     return const InputDecoration().applyDefaults(theme).copyWith(
//           labelText: _labelText(),
//           hintText: widget.hintText,
//           hintMaxLines: 1,
//           errorMaxLines: 2,
//           alignLabelWithHint: false,
//           prefixIcon: widget.prefixIcon != null
//               ? Padding(
//                   padding: const EdgeInsets.only(left: 16, right: 8),
//                   child: widget.prefixIcon,
//                 )
//               : null,
//           label: widget.labelWidget,
//         );
//   }
// }
