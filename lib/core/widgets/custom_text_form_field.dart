import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.kebordType,
    this.controll,
    this.validator,
    this.textCapitalization,
    this.obscureText = false,
    this.textAlig = TextAlign.left,
    this.title,
    this.onChanged,
    this.autovalidateMode,
    this.color,
    this.inputFormatters,
  });
  final String? hintText;
  final Widget? suffixIcon;
  final TextInputType? kebordType;
  final TextEditingController? controll;
  final FormFieldValidator<String>? validator;
  final TextCapitalization? textCapitalization;
  final bool obscureText;
  final TextAlign textAlig;
  final Widget? title;
  final void Function(String)? onChanged;
  final AutovalidateMode? autovalidateMode;
  final List<TextInputFormatter>? inputFormatters;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: TextFormField(
        autovalidateMode: autovalidateMode,
        onChanged: onChanged,
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        // style: TextStyle(fontSize: 21, color: color ?? Colors.white),
        validator:
            validator ??
            (value) {
              if (value!.isEmpty) {
                return 'هذا الحقل مطلوب';
              }
              return null;
            },
        inputFormatters: inputFormatters,
        textAlign: textAlig,
        keyboardType: kebordType,
        textInputAction: TextInputAction.next,
        controller: controll,
        // style: TextStyle(color:),
        obscureText: obscureText,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: color ?? AppColors.orange),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          enabled: true,
          label: title,
          hintText: hintText,
          hintStyle: AppTextStyle.regularFontSize14Greay,

          suffixIcon: suffixIcon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
