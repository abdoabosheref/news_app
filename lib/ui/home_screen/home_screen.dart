import 'package:flutter/material.dart';
import 'package:news_app/core/providers/theme_pro.dart';
import 'package:news_app/core/utils/context_helper.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:news_app/ui/home_screen/widgets/custom_drawer.dart';
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
     drawer: CustomDrawer(),
     body: Column(
       children: [

       ],
     ),
    );
  }

}