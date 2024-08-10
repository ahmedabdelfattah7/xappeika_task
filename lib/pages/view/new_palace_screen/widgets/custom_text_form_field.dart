

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xapprika/constants/colors.dart';
import 'package:xapprika/constants/text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType inputType;
  final bool obscureText;
  TextEditingController? controller;
  final bool isHiddenPassword;
  final String obscuringCharacter;
  final String hint;
  final String label;
  final Color? filledColor;
  bool enable;
  final Function()? onTap;

  final InputDecoration? decoration;
  final Function(String?) onSave;
  final Function(String?)? onChange;
  final Function(String?)? nextFocus;
  final Function()? onTapShowHidePassword;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  TextInputAction? textInputAction;
  int maxLines;
  int? maxLength;
  Widget? suffixIcon;
  Widget? prefixIcon;
  List<TextInputFormatter>? inputFormatters;
  final TextStyle? labelTextStyle;
  final TextAlignVertical textAlignVertical;
  CustomTextFormField(
      {Key? key,
        required this.hint,
        required this.onSave,
        required this.inputType,
        required this.label,
        this.textAlignVertical = TextAlignVertical.center,
        this.onChange,
        this.nextFocus,
        this.validator,
        this.controller,
        this.obscureText = false,
        this.filledColor,
        this.maxLength,
        this.decoration,
        this.focusNode,
        this.maxLines = 1,
        this.isHiddenPassword = false,
        this.obscuringCharacter = "*",
        this.inputFormatters,
        this.enable = true,
        this.onTap,
        this.onTapShowHidePassword,
        this.textInputAction,
        this.suffixIcon,
        this.prefixIcon,
        this.labelTextStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormField(
        validator: validator,
        builder: (FormFieldState<dynamic> field) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller,
                validator: validator == null
                    ? null
                    : (e) {
                  if (controller?.text.isNotEmpty ?? false)
                    return null;
                  else
                    return "";
                },
                onSaved: onSave,
                onChanged: onChange,
                cursorColor: ColorCode.darkGrey,
                showCursor: true,
                onTap: onTap,
                enabled: enable,
                textAlign: TextAlign.start,
                keyboardType: inputType,
                maxLines: maxLines,
                minLines: maxLines >= 1 ? maxLines : 1,
                focusNode: focusNode,
                inputFormatters: inputFormatters ?? [],
                textAlignVertical: textAlignVertical,
                autovalidateMode: AutovalidateMode.disabled,
                obscureText: obscureText && isHiddenPassword,
                obscuringCharacter: obscuringCharacter,
                textInputAction: textInputAction,
                onFieldSubmitted: nextFocus,
                maxLength: maxLength,
                style: TextStyles.textMedium.copyWith(
                  color: ColorCode.darkGrey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                decoration: decoration ??
                    InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      // hintText: hint,
                      hintStyle: TextStyles.textMedium.copyWith(
                        color: ColorCode.darkGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: 10.5,
                      ),

                      labelText: hint,
                      errorStyle: TextStyle(height: 0.1, fontSize: 1),
                      labelStyle: labelTextStyle ??
                          TextStyles.textXSmall.copyWith(
                              fontWeight: FontWeight.w500,
                              color: ColorCode.darkGrey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        borderSide: BorderSide(
                            color: filledColor != null
                                ? filledColor!
                                : ColorCode.lightGrey,
                            width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        borderSide: BorderSide(
                            color: filledColor != null
                                ? filledColor!
                                : ColorCode.lightGrey,
                            width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        borderSide: BorderSide(
                            color: filledColor != null
                                ? filledColor!
                                : ColorCode.lightGrey,
                            width: 1),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        borderSide:
                        BorderSide(color: ColorCode.lightGrey, width: 1),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        borderSide: BorderSide(
                            color: filledColor != null
                                ? filledColor!
                                : ColorCode.lightGrey,
                            width: 1),
                      ),
                      fillColor: filledColor ?? ColorCode.lightGrey,
                      filled: true,
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h)
                          .r,
                      prefixIcon: prefixIcon,
                      suffixIcon: obscureText
                          ? GestureDetector(
                          onTap: onTapShowHidePassword,
                          child: isHiddenPassword
                              ? const Icon(
                            Icons.visibility_off_outlined,
                            size: 24,
                            color: Color(0xff808080),
                          )
                              : const Icon(
                            Icons.visibility_outlined,
                            size: 24,
                            color: Color(0xff808080),
                          )) //AppSVGAssets.getWidget(AppSVGAssets.showPassword))
                          : suffixIcon,
                    ),
              ),
              if (field.hasError)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    field.errorText?.toString() ?? "",
                    style: const TextStyle(color: Colors.red),
                  ),
                )
            ],
          );
        });
  }
}