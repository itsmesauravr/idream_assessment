import 'package:flutter/material.dart';
import 'package:idream_assessment/app/home/widget/text_sections.dart';
import 'package:idream_assessment/app/utils/app_colors.dart';
import 'package:idream_assessment/app/utils/app_size.dart';

class ShowBox {
  static void showSimpleDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 200, horizontal: 8),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: AppColors.kCardBroderColor,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  AppSize.kHeight10,
                  const TextSections(
                    data: "Select a class",
                  ),
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 8,
                      ),
                      itemCount: 12,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            color: AppColors.kWhiteColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              color: AppColors.kCardBroderColor,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "${index + 1}th",
                              style: TextStyle(
                                color: AppColors.kCancelButtonColor,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 12,
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        AppColors.kCancelColor,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: AppColors.kCancelButtonColor,
                      ),
                    ),
                  ),
                  AppSize.kHeight15,
                ],
              ),
            ),
          );
        },
      );
}
