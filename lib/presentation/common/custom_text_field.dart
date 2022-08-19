import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zukko_books/presentation/pages/styles/theme_warpper.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final String? error;
  final TextEditingController? controller;
  final List<TextInputFormatter>? formatter;

  const CustomTextField(
      {Key? key,
      this.controller,
      this.formatter,
      this.hintText = '',
      this.title = '',
      this.keyboardType = TextInputType.text,
      this.suffixIcon,
      this.error})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.title.isNotEmpty
              ? Text(widget.title, style: fonts.subtitle2)
              : const SizedBox(),
          widget.title.isNotEmpty ? SizedBox(height: 6.h) : const SizedBox(),
          TextFormField(
            inputFormatters: widget.formatter,
            controller: widget.controller,
            style: fonts.bodyText2,
            keyboardType: widget.keyboardType,
            decoration: InputDecoration(
              suffixIcon: widget.suffixIcon != null
                  ? IconButton(
                      icon: widget.suffixIcon!,
                      onPressed: () {},
                    )
                  : null,
              focusColor: colors.primary,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide(color: colors.stroke, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide(color: colors.stroke, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide(color: colors.stroke, width: 1),
              ),
              hintText: widget.hintText,
              hintStyle: fonts.bodyText2.copyWith(color: colors.darkGrey),
              errorText: widget.error,
              contentPadding: EdgeInsets.only(left: 12.w, top: 10.h),
            ),
          ),
        ],
      );
    });
  }
}

class CustomSearchField extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;

  const CustomSearchField({
    Key? key,
    this.controller,
    this.hintText = '',
  }) : super(key: key);

  @override
  State<CustomSearchField> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return TextFormField(
        controller: widget.controller,
        style: fonts.bodyText2,
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.search,
            color: colors.darkGrey,
          ),
          focusColor: colors.primary,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(color: colors.stroke, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(color: colors.stroke, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(color: colors.stroke, width: 1),
          ),
          filled: true,
          fillColor: colors.grey,
          hintText: widget.hintText,
          hintStyle: fonts.bodyText2.copyWith(color: colors.darkGrey),
          contentPadding: EdgeInsets.only(left: 12.w, top: 10.h),
        ),
      );
    });
  }
}
