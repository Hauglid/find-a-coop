import 'package:find_a_coop/find_a_coop/view/find_a_coop_page.dart';
import 'package:find_a_coop/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData(Brightness.light),
      darkTheme: themeData(Brightness.dark),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const FindACoopPage(),
    );
  }
}

ThemeData themeData(Brightness mode) => ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
        brightness: mode,
        seedColor: primaryColor,
        primary: mode == Brightness.light ? primaryColor : null,
      ),
      useMaterial3: true,
    ).copyWith(visualDensity: VisualDensity.standard);

const Color primaryColor = Color(0xFF003366);
