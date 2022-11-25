import 'package:flutter/material.dart';
import 'package:idream_assessment/app/home/view_model/home_view_model.dart';
import 'package:idream_assessment/app/utils/app_size.dart';
import 'package:provider/provider.dart';

class YourSubjectWidget extends StatelessWidget {
  const YourSubjectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final homePro = Provider.of<HomeProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(
            homePro.indexListTile == 0 ? "Your" : "आपका",
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          AppSize.kWidth10,
          Text(
            homePro.indexListTile == 0 ? "Subjects" : "विषयों",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
