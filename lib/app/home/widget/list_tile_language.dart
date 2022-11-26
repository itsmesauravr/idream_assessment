import 'package:flutter/material.dart';
import 'package:idream_assessment/app/home/view_model/home_view_model.dart';
import 'package:idream_assessment/app/utils/app_colors.dart';
import 'package:provider/provider.dart';

class ListTileLanguage extends StatelessWidget {
  const ListTileLanguage({
    super.key,
    required this.data,
    required this.backgroundColor,
    required this.title,
    required this.onTap,
    required this.icon,
  });

  final String data;
  final Color backgroundColor;
  final String title;
  final void Function()? onTap;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    final homePro = Provider.of<HomeProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 70,
        child: ListTile(
          onTap: onTap,
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
            child: Text(
              title,
              style: const TextStyle(
                color: AppColors.kWhiteColor,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          title: Text(
            data,
          ),
          trailing: Icon(
            icon,
            color: AppColors.kGreenColor,
          ),
        ),
      ),
    );
  }
}
