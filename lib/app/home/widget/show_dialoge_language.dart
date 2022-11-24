import 'package:flutter/material.dart';
import 'package:idream_assessment/app/home/widget/list_tile_language.dart';
import 'package:idream_assessment/app/home/widget/text_sections.dart';
import 'package:idream_assessment/app/utils/app_colors.dart';
import 'package:idream_assessment/app/utils/app_size.dart';

class ShowLanguage {
  static void showSimpleDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 235,
              horizontal: 8,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: AppColors.kCardBroderColor,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Column(
                  children: [
                    AppSize.kHeight10,
                    TextSections(
                      data: "Choose your preffered language",
                      color: AppColors.kCancelButtonColor,
                    ),
                    AppSize.kHeight20,
                    const ListTileLanguage(
                      data: "English is my Preferred\nLanguage",
                      backgroundColor: AppColors.kGreenColor,
                    ),
                    const ListTileLanguage(
                      data: "Hind is my Preferred\nLanguage",
                      backgroundColor: AppColors.kOrangeColor,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
}
