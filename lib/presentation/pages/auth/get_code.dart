import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:zukko_books/presentation/common/counter.dart';
import 'package:zukko_books/presentation/common/custom_button.dart';
import 'package:zukko_books/presentation/pages/routes.dart';
import 'package:zukko_books/presentation/pages/styles/theme.dart';
import 'package:zukko_books/presentation/pages/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';

class SubmitCode extends StatefulWidget {
  const SubmitCode({Key? key}) : super(key: key);

  @override
  State<SubmitCode> createState() => _SubmitCodeState();
}

class _SubmitCodeState extends State<SubmitCode> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
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
                  _logo(colors, icons, fonts),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 70.w),
                    child: PinPut(
                      fieldsCount: 4,
                      controller: _controller,
                      eachFieldConstraints:
                          BoxConstraints(minHeight: 40.0, minWidth: 40.0.w),
                      submittedFieldDecoration: _pinPutDecoration(colors),
                      selectedFieldDecoration: _pinPutDecoration(colors),
                      followingFieldDecoration: _pinPutDecoration(colors),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Counter(style: fonts.subtitle1, isDisabled: (_) {}),
                  SizedBox(height: 16.h),
                  CustomTextButton(onPressed: () {}, title: 'resend'.tr()),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 64.h, horizontal: 16.w),
                child: Column(
                  children: [
                    CustomTextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      title: 'change_phone_number'.tr(),
                    ),
                    SizedBox(height: 12.h),
                    CustomButton(
                      onPressed: () {
                        Navigator.push(context, Routes.getMainRoute(context));
                      },
                      title: 'enter'.tr(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  BoxDecoration _pinPutDecoration(CustomColorSet colors) {
    return BoxDecoration(
      border: Border(
        bottom: BorderSide(color: colors.text),
      ),
    );
  }

  Widget _logo(CustomColorSet colors, IconSet icons, FontSet fonts) {
    return Container(
      width: double.infinity,
      height: 220.h,
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
                  child: SvgPicture.asset(icons.protect),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'enter_code'.tr(),
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
