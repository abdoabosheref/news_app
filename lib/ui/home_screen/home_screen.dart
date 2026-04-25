import 'package:flutter/material.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../core/providers/lang_pro.dart'; // Ensure this path is correct

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var langPro = Provider.of<LangPro>(context);
    final appLocal= AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(appLocal!.hereIsSomeNews),
      ),
     body: ElevatedButton(onPressed: (){
     langPro.changeLang(langPro.lang == 'en' ? 'ar' : 'en');
}, child:Text(appLocal.drawerLanguage)),
    );
  }
}