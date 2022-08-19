import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zukko_books/application/auth_bloc/auth_bloc.dart';
import 'package:zukko_books/application/home_bloc/home_bloc.dart';
import 'package:zukko_books/infrastructure/repositories/auth.dart';
import 'package:zukko_books/presentation/pages/auth/get_phone_number.dart';
import 'package:zukko_books/presentation/pages/category/category.dart';
import 'package:zukko_books/presentation/pages/home/home.dart';

import 'Initializer.dart';
import 'app_widget.dart';
import 'auth/get_code.dart';
import 'category/all_categories.dart';

class Routes {
  Routes._();

  static PageRoute<dynamic>? onGenerateRoute({
    required BuildContext context,
    required bool hasNetworkConnection,
  }) {
    if (!hasNetworkConnection) {
      // return getNetworkNotFound();
    } else {
      return getSplashRoute(context);
    }
    return null;
  }

  // static PageRoute getNetworkNotFound() => MaterialPageRoute(
  //       builder: (_) => const NoConnection(),
  //     );

  static PageRoute getAppWidget() => MaterialPageRoute(
        builder: (_) => const AppWidget(),
      );

  static PageRoute getSignInRoute(BuildContext context) => MaterialPageRoute(
        builder: (_) => const Login(),
      );

  static PageRoute getSplashRoute(BuildContext context) => MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) => AuthBloc(
            context.read<AuthRepository>(),
          )..add(const AuthEvent.checkAuth()),
          child: const Initializer(),
        ),
      );

  static PageRoute getMainRoute(BuildContext context) => MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) => HomeBloc(),
          child: const HomePage(),
        ),
      );

  static PageRoute submitCode(BuildContext context) =>
      MaterialPageRoute(builder: (_) => const SubmitCode());

  static PageRoute category(BuildContext context) =>
      MaterialPageRoute(builder: (_) => const Category());

  static PageRoute allCategory(BuildContext context) =>
      MaterialPageRoute(builder: (_) => const AllCategory());
}
