import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:multilangdemo/generated/l10n.dart';
import 'package:multilangdemo/home.dart';
import 'package:multilangdemo/languageChangeProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LanguageChangeProvider>(
      create: (context) => LanguageChangeProvider(),
      builder: (context, child) {
        return MaterialApp(
            locale: Provider.of<LanguageChangeProvider>(context, listen: true)
                .currentLocale,
            supportedLocales: S.delegate.supportedLocales,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            title: 'Flutter localization',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const Home());
      },
    );
  }
}
