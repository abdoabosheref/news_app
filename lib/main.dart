import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:news_app/core/providers/theme_pro.dart';
import 'package:news_app/core/utils/app_routes.dart';
import 'package:news_app/core/utils/app_theme.dart';
import 'package:news_app/ui/home_screen/home_screen.dart';
import 'package:news_app/ui/news_list/news_list.dart';
import 'package:provider/provider.dart';
import 'core/providers/lang_pro.dart';
import 'l10n/app_localizations.dart';

void main() {

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => LangPro()),
    ChangeNotifierProvider(create: (context) => ThemePro()),
  ],
  child: const MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var langPro = Provider.of<LangPro>(context);
    var themePro = Provider.of<ThemePro>(context);
    return MaterialApp(

      theme: AppTheme.lightTheme,
      darkTheme:AppTheme.darkTheme ,
      themeMode:themePro.appTheme,

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

       initialRoute: AppRoutes.newsList,
      routes: {
        AppRoutes.homeScreen : (context) => HomeScreen(),
        AppRoutes.newsList : (context) => NewsList(),
      },


    );
  }
}
