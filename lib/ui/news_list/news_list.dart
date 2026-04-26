import 'package:flutter/material.dart';
import 'package:news_app/core/utils/app_routes.dart';
import 'package:news_app/core/utils/app_style_light_dark.dart';
import 'package:news_app/ui/news_list/widgets/news_list_view.dart';
import 'package:provider/provider.dart';
import '../../core/providers/lang_pro.dart';
import '../../core/providers/theme_pro.dart';
import '../../core/utils/context_helper.dart';
import '../../l10n/app_localizations.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    final langPro = Provider.of<LangPro>(context);
    final themePro = Provider.of<ThemePro>(context);
    final appLocal = AppLocalizations.of(context);
    ContextHelper.width(context);
    ContextHelper.height(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(appLocal!.home),
      ),
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                appLocal.goodMorning,
                style: themePro.isLight()
                    ? AppStyle.med24Black
                    : AppStyle.med24White,
              ),
              Text(
                appLocal.hereIsSomeNews,
                style: themePro.isLight()
                    ? AppStyle.med24Black
                    : AppStyle.med24White,
              ),
              SizedBox(height: ContextHelper.height(context)*0.018,),
              NewsListView(onTape: (){
                //todo: navigation
                Navigator.pushReplacementNamed(context, AppRoutes.homeScreen);
              },),


            ],
          ),
        ),
      ),
    );
  }
}
