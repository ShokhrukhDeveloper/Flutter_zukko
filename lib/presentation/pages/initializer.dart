// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zukko_books/application/auth_bloc/auth_bloc.dart';
import 'package:zukko_books/presentation/common/splash_page.dart';
import 'package:zukko_books/presentation/pages/routes.dart';

class Initializer extends StatelessWidget {
  const Initializer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) => Navigator.pushAndRemoveUntil(
              context, Routes.getMainRoute(context), (route) => false),
          unAuthenticated: (_) => Navigator.pushAndRemoveUntil(
              context, Routes.getSignInRoute(context), (route) => false),
        );
      },
      child: const SplashPage(),
    );
  }
}
