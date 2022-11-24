import 'package:flutter/material.dart';
import 'package:idream_assessment/app/home/widget/books.dart';
import 'package:idream_assessment/app/home/widget/grid_view_home.dart';
import 'package:idream_assessment/app/home/widget/show_dialoge_language.dart';
import 'package:idream_assessment/app/home/widget/show_dialogue_class.dart';
import 'package:idream_assessment/app/home/widget/text_sections.dart';
import 'package:idream_assessment/app/home/widget/your_subject.dart';
import 'package:idream_assessment/app/utils/app_colors.dart';
import 'package:idream_assessment/app/utils/app_size.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      key: scaffoldKey,
      drawer: const Drawer(),
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: AppColors.kWhiteColor,
        elevation: 0,
        leading: GestureDetector(
          child: Image.asset(
            'assests/images/menu_app_bar.png',
            height: 25,
            width: 25,
          ),
          onTap: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        title: Row(
          children: [
            GestureDetector(
              onTap: () => ShowBox.showSimpleDialog(context),
              child: Chip(
                backgroundColor: AppColors.kChipColor,
                label: Text(
                  "Class",
                  style: TextStyle(
                    color: AppColors.kChipTextColor,
                  ),
                ),
                onDeleted: () {
                  ShowBox.showSimpleDialog(context);
                },
                deleteIcon: const Icon(
                  Icons.arrow_drop_down_sharp,
                  color: AppColors.kBlueColor,
                ),
              ),
            ),
            AppSize.kWidth10,
            GestureDetector(
              onTap: () => ShowBox.showSimpleDialog(context),
              child: Chip(
                backgroundColor: AppColors.kChipColor,
                label: Text(
                  "Eng",
                  style: TextStyle(
                    color: AppColors.kChipTextColor,
                  ),
                ),
                onDeleted: () {
                  ShowLanguage.showSimpleDialog(context);
                },
                deleteIcon: const Icon(
                  Icons.arrow_drop_down_sharp,
                  color: AppColors.kBlueColor,
                ),
              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            child: Image.asset(
              'assests/images/notification_app_bar.png',
              height: 30,
              width: 30,
            ),
            onTap: () {},
          ),
          AppSize.kWidth10,
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSize.kHeight15,
            const YourSubjectWidget(),
            const GridViewBuilderWidget(),
            AppSize.kHeight10,
            const TextSections(data: "Books"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: const [
                  BooksSection(
                    assetName: "assests/images/book_image.svg",
                    data: "Arts and History",
                  ),
                  BooksSection(
                    assetName: "assests/images/book_image.svg",
                    data: "Inspirational",
                  ),
                  BooksSection(
                    assetName: "assests/images/book_image.svg",
                    data: "Science",
                  ),
                  BooksSection(
                    assetName: "assests/images/book_image.svg",
                    data: "Social and Enviromental",
                  )
                ],
              ),
            ),
            const TextSections(
              data: "Projects",
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  BooksSection(
                    assetName: "assests/images/Group 9205.svg",
                    data: "Math",
                  ),
                  BooksSection(
                    assetName: "assests/images/book_image.svg",
                    data: "Science",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Notes"),
          BottomNavigationBarItem(
              icon: Icon(Icons.auto_graph_sharp), label: "My Reports"),
        ],
      ),
    );
  }
}
