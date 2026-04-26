import 'package:flutter/material.dart';
import 'package:news_app/core/utils/app_style_light_dark.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../../../core/providers/theme_pro.dart';
import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_image.dart';
import '../../../core/utils/context_helper.dart';

class NewsListView extends StatelessWidget {
  NewsListView({super.key, required this.onTape});
  VoidCallback onTape;


  @override
  Widget build(BuildContext context) {
    final List<Image> imagesLight = [
      AppImage.general,
      AppImage.business,
      AppImage.sport,
      AppImage.technology,
      AppImage.entertainment,
      AppImage.health,
      AppImage.science,
    ];
    final List<Image> imagesDark = [
      AppImage.generalDark,
      AppImage.businessDark,
      AppImage.sportDark,
      AppImage.technologyDark,
      AppImage.entertainmentDark,
      AppImage.healthDark,
      AppImage.scienceDark,
    ];
    final List<String> categories = [
      AppLocalizations.of(context)!.categoryGeneral,
      AppLocalizations.of(context)!.categoryBusiness,
      AppLocalizations.of(context)!.categorySports,
      AppLocalizations.of(context)!.categoryTechnology,
      AppLocalizations.of(context)!.categoryEntertainment,
      AppLocalizations.of(context)!.categoryHealth,
      AppLocalizations.of(context)!.categoryScience,
    ];
    final List<String> categories2 = [
      'General',
      'Business',
      'Sport',
      'Technology',
      'Entertainment',
      'Health',
      'Science',
    ];
    final themePro = Provider.of<ThemePro>(context);
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          height: ContextHelper.height(context) * 0.23,
          child: Stack(
            fit: .expand,
            children: [
              themePro.isLight() ? imagesDark[index] : imagesLight[index],
              Align(
                alignment: index % 2 == 0
                    ? Alignment.bottomRight
                    : Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsetsDirectional.all(15),
                  child: Column(
                    children: [
                      Text(categories[index],
                          style:themePro.isLight()?
                          AppStyle.med30White : AppStyle.med30Black),
                      Spacer(),
                      InkWell(
                        onTap: onTape,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColor.darkGrey,
                            borderRadius: BorderRadius.circular(27),
                          ),
                          width: ContextHelper.width(context) * 0.43,
                          height: ContextHelper.height(context) * 0.06,
                          child: index % 2 == 0
                              ? Row(
                                  spacing: ContextHelper.width(context) * 0.02,
                                  mainAxisAlignment: .end,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.viewAll,
                                      style: AppStyle.med24White,
                                    ),
                                    clipOvalBuild(themePro,context,Icons.arrow_forward_ios_rounded),
                                  ],
                                )
                              : Row(
                                  spacing:  ContextHelper.width(context) * 0.02,
                                  mainAxisAlignment: .start,
                                  children: [
                                    clipOvalBuild(themePro,context,Icons.arrow_back_ios_new_rounded),
                                    Text(
                                      AppLocalizations.of(context)!.viewAll,
                                      style: AppStyle.med24White,
                                    ),
                                  ],
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) =>
            SizedBox(height: ContextHelper.height(context) * 0.02),
        itemCount: imagesLight.length,
      ),
    );
  }
  Widget clipOvalBuild (ThemePro themePro,BuildContext context,IconData arrow){
    return ClipOval(
      child: Container(
        color:themePro.isLight()? AppColor.white : AppColor.black,
        width: ContextHelper.width(context) * 0.13,
        height:  ContextHelper.height(context) * 0.06,
        child: Center(
          child: Icon( arrow,size: 24,
            color:themePro.isLight()? AppColor.black : AppColor.white,
          ),
        ),
      ),
    );
  }

}
