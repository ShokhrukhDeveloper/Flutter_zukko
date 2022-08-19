import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:zukko_books/presentation/common/custom_button.dart';
import 'package:zukko_books/presentation/common/custom_text_field.dart';
import 'package:zukko_books/presentation/pages/auth/get_code.dart';
import 'package:zukko_books/presentation/pages/routes.dart';
import 'package:zukko_books/presentation/pages/styles/theme.dart';
import 'package:zukko_books/presentation/pages/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController _controller;
  final maskFormatter = MaskTextInputFormatter(
    mask: '+998 ## ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
  );

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '+998');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: colors.bg,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  _logo(colors, fonts, icons),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: CustomTextField(
                      controller: _controller,
                      title: 'phone_number'.tr(),
                      hintText: '+998',
                      formatter: [
                        maskFormatter,
                      ],
                      keyboardType: TextInputType.phone,
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 64.h, horizontal: 16.w),
                child: CustomButton(
                  onPressed: () {
                    Navigator.push(context, Routes.submitCode(context));
                  },
                  title: 'enter'.tr(),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget _logo(CustomColorSet colors, FontSet fonts, IconSet icons) {
    return Container(
      width: double.infinity,
      height: 300.h,
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 50.h),
      decoration: BoxDecoration(
        color: colors.primary,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(icons.loginMask),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 84.w,
                height: 84.w,
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  color: colors.white.withOpacity(0.07),
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Container(
                  width: 74.w,
                  height: 74.w,
                  padding: EdgeInsets.all(7.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26.r),
                    color: colors.grey,
                  ),
                  child: SvgPicture.asset(icons.logo),
                ),
              ),
              SizedBox(height: 34.h),
              Text(
                'greatings'.tr(),
                textAlign: TextAlign.center,
                style: fonts.headline6.copyWith(color: colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
