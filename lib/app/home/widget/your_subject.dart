import 'package:flutter/material.dart';
import 'package:idream_assessment/app/utils/app_size.dart';

class YourSubjectWidget extends StatelessWidget {
  const YourSubjectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: const [
          Text(
            "Your",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          AppSize.kWidth10,
          Text(
            "Subjects",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
