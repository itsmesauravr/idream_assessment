import 'package:flutter/material.dart';
import 'package:idream_assessment/app/home/view_model/home_view_model.dart';
import 'package:idream_assessment/app/home/widget/list_tile_language.dart';
import 'package:idream_assessment/app/home/widget/text_sections.dart';
import 'package:idream_assessment/app/utils/app_colors.dart';
import 'package:idream_assessment/app/utils/app_size.dart';
import 'package:provider/provider.dart';

class ShowLanguage {
  static void showSimpleDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) {
          final homePro = Provider.of<HomeProvider>(context);
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 225,
              horizontal: 8,
            ),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: AppColors.kCardBroderColor,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      AppSize.kHeight10,
                      TextSections(
                        data: "Choose your preffered language",
                        color: AppColors.kCancelButtonColor,
                      ),
                      AppSize.kHeight20,
                      ListTileLanguage(
                        title: "A",
                        data: "English is my Preferred Language",
                        backgroundColor: AppColors.kGreenColor,
                        icon: homePro.indexListTile == 0
                            ? Icons.check_circle
                            : null,
                        onTap: () {
                          homePro.lanuguageSelection(0);
                          Navigator.of(context).pop();
                        },
                      ),
                      ListTileLanguage(
                        title: "आ",
                        data: "हिंदी मेरी पसंदीदा भाषा है",
                        backgroundColor: AppColors.kOrangeColor,
                        icon: homePro.indexListTile == 1
                            ? Icons.check_circle
                            : null,
                        onTap: () {
                          homePro.lanuguageSelection(1);
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      );
}
