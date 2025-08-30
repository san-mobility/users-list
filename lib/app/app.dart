import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/common.dart';
import '../core/utils/connectivity_check.dart';
import '../core/utils/custom_loader.dart';
import '../features/home/application/home_bloc.dart';
import '../features/home/presentation/pages/home_page.dart';
import '../l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeBloc()),
      ],
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              }
            },
            child: SafeArea(
              top: false,
              child: MaterialApp(
                scaffoldMessengerKey: scaffoldMessengerKey,
                navigatorKey: navigatorKey,
                debugShowCheckedModeBanner: false,
                theme: AppThemes.applicationDefaultTheme(context),
                onGenerateRoute: AppRoutes.onGenerateRoutes,
                onUnknownRoute: AppRoutes.onUnknownRoute,
                initialRoute: HomePage.routeName,
                title: AppConstants.title,
                themeMode: ThemeMode.light,
                darkTheme: AppThemes.darkTheme(context),
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
              ),
            ),
          );
        },
      ),
    );
  }
}
