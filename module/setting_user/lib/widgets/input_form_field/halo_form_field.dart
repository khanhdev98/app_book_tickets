// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:theme/material3/m3_theme_lib.dart';
//
// enum FieldType { email, lastName, middleName, firstName, onlyFirstName, pass,  address, phone, country, city, date }
//
// class HaloTextFormField extends StatefulWidget {
//   const HaloTextFormField(
//       {Key? key,
//       this.isRequired = false,
//       this.labelText,
//       this.validator,
//       this.controller,
//       this.onTap,
//       this.inputFormatters,
//       this.enabled,
//       this.keys,
//       this.focusNode,
//       this.onFieldSubmitted,
//       this.prefixIcon,
//       this.suffixIcon,
//       this.counterText,
//       this.autoValidateMode,
//       this.onChanged,
//       this.keyboardType,
//       this.obscureText = false,
//       }) : super(key: key);
//
//   final bool isRequired;
//   final GlobalKey<FormFieldState>? keys;
//
//   final FormFieldValidator<String>? validator;
//   final String? labelText;
//   final TextEditingController? controller;
//   final Function()? onTap;
//   final bool? enabled;
//   final List<TextInputFormatter>? inputFormatters;
//   final FocusNode? focusNode;
//   final Widget? suffixIcon;
//   final Widget? prefixIcon;
//   final Function(String)? onFieldSubmitted;
//   final String? counterText;
//   final AutovalidateMode? autoValidateMode;
//   final Function(String)? onChanged;
//   final TextInputType? keyboardType;
//   final bool obscureText;
//
//   @override
//   State<HaloTextFormField> createState() => _HaloTextFormFieldState();
// }
//
// class _HaloTextFormFieldState extends State<HaloTextFormField> {
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//         key: widget.keys,
//         controller: widget.controller,
//         inputFormatters: widget.inputFormatters,
//         autovalidateMode: widget.autoValidateMode ?? AutovalidateMode.onUserInteraction,
//         validator: widget.validator,
//         onTap: widget.onTap,
//         keyboardType: widget.keyboardType,
//         onFieldSubmitted: widget.onFieldSubmitted,
//         focusNode: widget.focusNode,
//         textInputAction: TextInputAction.next,
//         enabled: widget.enabled,
//         readOnly: widget.onTap != null,
//         onChanged: widget.onChanged,
//         obscureText: widget.obscureText,
//         decoration: InputDecoration(
//           label: Text.rich(
//             TextSpan(children: [
//               TextSpan(text: widget.labelText),
//               if (widget.isRequired) TextSpan(text: " *", style: context.bodyLarge?.notice)
//             ]),
//           ),
//           suffixIcon: widget.suffixIcon,
//           prefixIcon: widget.prefixIcon,
//           suffixIconColor: context.onSurfaceColor,
//           counterText: widget.counterText,
//         ));
//   }
// }
