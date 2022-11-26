import 'package:flutter/material.dart';
import 'package:idream_assessment/app/utils/app_colors.dart';

class TextSections extends StatelessWidget {
  const TextSections({
    super.key,
    required this.data,
    this.color,
  });

  final Color? color;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        data,
        style: TextStyle(
          overflow: TextOverflow.ellipsis,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: color ?? AppColors.kBlackColor,
        ),
      ),
    );
  }
}
