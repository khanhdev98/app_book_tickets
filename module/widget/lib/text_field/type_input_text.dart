import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme/theme.dart';

class TextInputText extends StatefulWidget {
  final bool isName;
  final bool isNumber;
  final bool? isEmail;
  final bool? disable;
  final bool? isDecimal;
  final bool autoValidate;
  final bool? autoFocus;
  final bool? alwaysValidate;
  final TextAlign? textAlign;
  final FocusNode? focusNode;
  final String? textErrRequire;
  final String? name;
  final InputDecoration inputDecoration;
  final TextEditingController? controller;
  final bool? isRequire;
  final Function(String?)? onChange;
  final Function(String?)? validate;
  final List<TextInputFormatter>? formatters;
  final TextCapitalization textCapitalization;

  const TextInputText(
      {Key? key,
      required this.inputDecoration,
      this.controller,
      this.isRequire,
      this.validate,
      this.isNumber = false,
      this.isName = false,
      this.formatters,
      this.disable,
      this.onChange,
      this.isEmail,
      this.textErrRequire,
      this.name,
      this.textAlign,
      this.focusNode,
      this.autoFocus,
      required this.autoValidate,
      this.alwaysValidate,
      this.isDecimal,
      this.textCapitalization = TextCapitalization.sentences})
      : super(key: key);

  @override
  State<TextInputText> createState() => _TextInputTextState();
}

class _TextInputTextState extends State<TextInputText> {
  late TextEditingController textEditingController;
  AutovalidateMode autoValidate = AutovalidateMode.disabled;
  bool showClear = false;

  String? validate(String? value) {
    if ((value == null || value.trim() == "" && widget.isRequire == true)) {
      return widget.textErrRequire ?? "Str.of(context).validate_empty";
    } else if (textEditingController.text != "") {
      String? result = widget.validate != null ? widget.validate!(value.trim()) : null;
      return result;
    }
    return null;
  }

  String? validateV2(String? value) {
    return widget.validate!(value?.trim());
  }

  late FocusNode focus;

  @override
  void initState() {
    focus = widget.focusNode ?? FocusNode();
    textEditingController = widget.controller ?? TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        textAlign: widget.textAlign ?? TextAlign.start,
        textCapitalization: widget.textCapitalization,
        enabled: !(widget.disable == true),
        controller: textEditingController,
        focusNode: focus,
        onChanged: (value) {
          if (showClear == true && value == "") {
            setState(() {
              showClear = false;
            });
          }
          if (showClear == false && value != "") {
            setState(() {
              showClear = true;
            });
          }
          if (widget.onChange != null) {
            widget.onChange!(value);
          }
        },

        ///validate
        autofocus: widget.autoFocus ?? false,
        autovalidateMode: widget.autoValidate == true ? autoValidate : null,
        keyboardType: keyboardType(),
        validator: (value) {
          if (widget.disable == true) {
            return null;
          } else {
            String? result = widget.alwaysValidate == true ? validateV2(value) : validate(value);
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (autoValidate != AutovalidateMode.always) {
                setState(() {
                  autoValidate = AutovalidateMode.always;
                });
              }
            });
            return result;
          }
        },
        inputFormatters: widget.isNumber
            ? [
                LengthLimitingTextInputFormatter(127),
                ...?widget.formatters,
                FilteringTextInputFormatter.digitsOnly
              ]
            : [LengthLimitingTextInputFormatter(127), ...?widget.formatters],
        decoration: widget.inputDecoration.copyWith(
            suffixIcon: (textEditingController.text != "" && (widget.disable != true))
                ? IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(
                      Icons.highlight_remove_sharp,
                      size: 20,
                    ),
                    onPressed: () {
                      textEditingController.clear();
                      if (widget.onChange != null) {
                        widget.onChange?.call('');
                      }
                      setState(() {
                        showClear = false;
                      });
                    },
                  )
                : null));
  }

  TextInputType keyboardType() {
    if(widget.isName) return TextInputType.name;
    return (widget.isNumber || widget.isDecimal == true)
          ? const TextInputType.numberWithOptions(decimal: true)
          : (widget.isEmail == true ? TextInputType.emailAddress : TextInputType.text);
  }
}
