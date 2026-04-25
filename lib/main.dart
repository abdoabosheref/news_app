import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:news_app/core/utils/app_routes.dart';
import 'package:news_app/ui/home_screen/home_screen.dart';
import 'package:provider/provider.dart';
import 'core/providers/lang_pro.dart';
import 'l10n/app_localizations.dart';

void main() {

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => LangPro()),
  ],
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var langPro = Provider.of<LangPro>(context);
    return MaterialApp(
      locale:Locale(langPro.lang) ,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      debugShowCheckedModeBanner: false,
       initialRoute: AppRoutes.homeScreen,
      routes: {
        AppRoutes.homeScreen : (context) => HomeScreen(),
      },


    );
  }
}
