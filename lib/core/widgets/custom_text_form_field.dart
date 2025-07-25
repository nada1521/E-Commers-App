import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.kebordType,
    this.controll,
    this.validator,
    this.textCapitalization,
    this.obscureText = false,
    this.textAlig = TextAlign.right,
    this.title,
    this.onChanged,
    this.autovalidateMode,
    this.color,
    this.inputFormatters,
  });
  final String? hintText;
  final Widget? prefixIcon;
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
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
            // borderSide: BorderSide(color: color ?? AppColor.kTextColor),
          ),
          enabledBorder: OutlineInputBorder(
            // borderSide: BorderSide(color: AppColor.kInactiveColor),
            borderRadius: BorderRadius.circular(12),
          ),
          enabled: true,
          label: title,
          hintText: hintText,
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            //  color: AppColor.kInactiveColor,
          ),

          prefixIcon: prefixIcon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
