import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:idream_assessment/app/home/model/subject_model.dart';
import 'package:idream_assessment/app/home/service/fire_base_api.dart';
import 'package:idream_assessment/app/home/view_model/home_view_model.dart';
import 'package:provider/provider.dart';

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final homePro = Provider.of<HomeProvider>(context);
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    return StreamBuilder(
      stream: homePro.subjectData.snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        List<SubjectsModel> subjects =
            FirebaseService.convertToList(streamSnapshot);
        return GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shrinkWrap: true,
          itemCount: subjects.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 15,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 1.15),
          ),
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: sizeHeight * .15,
                  width: sizeWidth * .21,
                  child: SvgPicture.network(subjects[index].image.toString()),
                ),
                Text(
                  subjects[index].name.toString(),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
