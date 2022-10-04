import 'package:coopx_design_system/coopx_design_system.dart';
import 'package:find_a_coop/core/router/my_router.dart';
import 'package:find_a_coop/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = context.read<MyRouter>().router;

    return MaterialApp.router(
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      theme: themeData(Brightness.light),
      darkTheme: themeData(Brightness.dark),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}

ThemeData themeData(Brightness mode) => ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
        brightness: mode,
        seedColor: AColor.primary,
        primary: mode == Brightness.light ? AColor.primary : null,
      ),
      useMaterial3: true,
    ).copyWith(visualDensity: VisualDensity.standard);
