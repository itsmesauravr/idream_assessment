import 'package:flutter/material.dart';
import 'package:idream_assessment/app/utils/app_colors.dart';

class ListTileLanguage extends StatelessWidget {
  const ListTileLanguage({
    super.key,
    required this.data,
    required this.backgroundColor,
  });

  final String data;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 70,
        child: ListTile(
          onTap: () {},
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: AppColors.kCardBroderColor,
            ),
          ),
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: backgroundColor,
            child: const Text(
              "A",
              style: TextStyle(
                color: AppColors.kWhiteColor,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          title: Text(
            data,
          ),
          trailing: const Icon(
            Icons.check_circle_outline,
            color: AppColors.kGreenColor,
          ),
        ),
      ),
    );
  }
}
