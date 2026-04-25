import 'package:flutter/material.dart';
import 'package:news_app/core/providers/theme_pro.dart';
import 'package:news_app/core/utils/app_color.dart';
import 'package:news_app/core/utils/app_style_light_dark.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../core/providers/lang_pro.dart'; // Ensure this path is correct

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var langPro = Provider.of<LangPro>(context);
    var themePro = Provider.of<ThemePro>(context);
    final appLocal= AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(appLocal!.hereIsSomeNews),
      ),
     drawer: Drawer(
       child: Expanded(
         child: ListView(
           children: [
             DrawerHeader(decoration: BoxDecoration(color: AppColor.white),child: Center(child:
             Text(appLocal.appTitle,style: AppStyle.bold24Black,)),),

           ],
         ),
       ),
     ),
     body: Column(
       children: [
         Container(
           decoration: BoxDecoration(),
         ),

         ElevatedButton(onPressed: (){
           showDialog(context: context,
             builder: (context) =>
                 AlertDialog(title: Text(appLocal.drawerLanguage)
                   ,content:Text('language') ,),);

           langPro.changeLang(langPro.lang == 'en' ? 'ar' : 'en');
           themePro.changeTheme(themePro.isLight()? ThemeMode.dark: ThemeMode.light);



         }, child:Text(appLocal.drawerLanguage)),
       ],
     ),
    );
  }
}