import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zukko_books/domain/common/connectivity_ext.dart';
import 'package:zukko_books/infrastructure/repositories/auth.dart';
import 'package:zukko_books/infrastructure/services/network.dart';
import 'package:zukko_books/infrastructure/services/prefs.dart';
import 'package:zukko_books/presentation/common/splash_page.dart';
import 'package:zukko_books/presentation/pages/routes.dart';
import 'package:zukko_books/presentation/pages/styles/theme.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:zukko_books/presentation/utils/colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: () {
          return FutureBuilder(
            future: Future.wait([
              PreferenceService.create,
              ConnectivityX.createAndCheck,
              ZukkoTheme.create,
            ]),
            builder: (context, AsyncSnapshot<List<dynamic>> snap) {
              if (snap.hasData && snap.data is List<dynamic>) {
                final data = snap.data;
                final PreferenceService pref = data?[0];
                final ConnectivityResult connectivity = data?[1];
                final ZukkoTheme theme = data?[2];
                return MultiRepositoryProvider(
                  providers: [
                    RepositoryProvider(create: (_) => pref),
                    RepositoryProvider(
                      create: (_) => AuthRepository(
                        pref,
                      ),
                    ),
                  ],
                  child: ChangeNotifierProvider(
                    create: (_) => theme,
                    builder: (context, _) {
                      return MaterialApp(
                        localizationsDelegates: context.localizationDelegates,
                        supportedLocales: context.supportedLocales,
                        locale: context.locale,
                        onGenerateRoute: (settings) => Routes.onGenerateRoute(
                          context: context,
                          hasNetworkConnection:
                              connectivity.hasNetworkConnection,
                        ),
                      );
                    },
                  ),
                );
              } else {
                return const MaterialApp(
                  home: Scaffold(
                    backgroundColor: AppColors.primary,
                  ),
                );
              }
            },
          );
        });
  }
}
