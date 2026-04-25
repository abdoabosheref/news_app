import 'package:flutter/material.dart';
import 'package:news_app/core/providers/theme_pro.dart';
import 'package:news_app/core/utils/app_color.dart';
import 'package:news_app/core/utils/app_style_light_dark.dart';
import 'package:news_app/core/utils/context_helper.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../../core/providers/lang_pro.dart';
import '../../core/utils/app_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var langPro = Provider.of<LangPro>(context);
    var themePro = Provider.of<ThemePro>(context);
    final appLocal= AppLocalizations.of(context);
    ContextHelper.width(context);
    ContextHelper.height(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(appLocal!.categoryGeneral),
        actionsPadding: EdgeInsets.symmetric(horizontal: ContextHelper.width(context)*0.05),

        actions: [
          InkWell(
              onDoubleTap: () {
            //Todo: open search bar
          },
              child: AppIcon.searchBIcon),
        ],
      ),
     drawer: Drawer(
       child: Expanded(
         child: Column(
           children: [
             DrawerHeader(decoration: BoxDecoration(color: AppColor.white),child: Center(child:
             Text(appLocal.appTitle,style: AppStyle.bold24Black,)),),
             Expanded(child:  Padding(
               padding: const EdgeInsets.all(16),
               child: Column(crossAxisAlignment: .start,
                 children: [
                   InkWell( onTap: (){
                     //todo : navigate to news list
                     // Navigator.pushNamed(context, AppRoutes.newsList);
                   },
                     child: ListTile(leading:AppIcon.homeIcon ,
                     title:Text(appLocal.drawerGoToHome,style: AppStyle.bold20White,) ,),
                   ),
                   Divider(),
                   ListTile(leading:AppIcon.themeIcon ,
                     title:Text(appLocal.drawerTheme,style: AppStyle.bold20White,) ,),
                   Container(height: ContextHelper.height(context)*0.07,
                     padding: EdgeInsets.all(10),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(16),
                         border: Border.all(color: AppColor.white
                     ,strokeAlign: 2)),
                     child: DropdownButton<ThemeMode>(
                       underline: Container(),
                       borderRadius: BorderRadius.circular(16),
                       dropdownColor:themePro.isLight()? AppColor.black: AppColor.red,
                       menuWidth: ContextHelper.width(context)*0.75 ,
                       style: AppStyle.med20White,
                       value: themePro.appTheme,
                       icon: Icon(Icons.arrow_drop_down_circle_outlined),
                       iconSize: ContextHelper.width(context)*0.06,
                       iconDisabledColor: AppColor.white,
                       iconEnabledColor: AppColor.white,
                       onChanged: (ThemeMode? newValue) {
                         if (newValue != null) {
                           themePro.changeTheme(newValue);
                         }
                       },
                       items: [
                         DropdownMenuItem<ThemeMode>(
                           alignment: AlignmentGeometry.center,
                           value: ThemeMode.light,
                           child: Text(appLocal.themeLight),
                         ),
                         DropdownMenuItem<ThemeMode>(
                           alignment: AlignmentGeometry.center,
                           value: ThemeMode.dark,
                           child: Text(appLocal.themeDark),
                         ),
                       ],
                     ),
                   ),
                   SizedBox(height: 20,),
                   Divider(),
                   ListTile(leading:AppIcon.languageIcon ,
                     title:Text(appLocal.drawerLanguage,style: AppStyle.bold20White,) ,),
                   Container(
                     height: ContextHelper.height(context)*0.07,
                     padding: EdgeInsets.all(10),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(16),
                         border: Border.all(color: AppColor.white
                             ,strokeAlign: 2)),
                     child: DropdownButton<String>(
                       value: langPro.lang,
                       underline: Container(),
                       borderRadius: BorderRadius.circular(16),
                       dropdownColor: themePro.isLight()? AppColor.black: AppColor.red,
                       menuWidth: ContextHelper.width(context)*0.75 ,
                       style: AppStyle.med20White,
                       icon: Icon(Icons.arrow_drop_down_circle_outlined),
                       iconSize: ContextHelper.width(context)*0.06,
                       iconDisabledColor: AppColor.white,
                       iconEnabledColor: AppColor.white,
                       onChanged: (String? newValue) {
                         if (newValue != null) {
                           langPro.changeLang(newValue);
                         }
                       },
                       items: [
                         DropdownMenuItem(
                           alignment: AlignmentGeometry.center,
                           value: 'en',
                           child: Text(appLocal.languageEnglish),
                         ),
                         DropdownMenuItem(
                           alignment: AlignmentGeometry.center,
                           value: 'ar',
                           child: Text(appLocal.languageArabic),
                         ),
                       ],
                     ),
                   ),

                 ],
               ),
             ),)



           ],
         ),
       ),
     ),
     body: Column(
       children: [
         // ElevatedButton(onPressed: (){
         //   showDialog(context: context,
         //     builder: (context) =>
         //         AlertDialog(title: Text(appLocal.drawerLanguage)
         //           ,content:Text('language') ,),);
         //
         //   langPro.changeLang(langPro.lang == 'en' ? 'ar' : 'en');
         //   themePro.changeTheme(themePro.isLight()? ThemeMode.dark: ThemeMode.light);
         //
         //
         //
         // }, child:Text(appLocal.drawerLanguage)),
       ],
     ),
    );
  }

}