import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:idream_assessment/app/home/model/books_model.dart';
import 'package:idream_assessment/app/home/model/projects_model.dart';
import 'package:idream_assessment/app/home/service/fire_base_api.dart';
import 'package:idream_assessment/app/home/view_model/home_view_model.dart';
import 'package:idream_assessment/app/home/widget/books.dart';
import 'package:idream_assessment/app/home/widget/grid_view_home.dart';
import 'package:idream_assessment/app/home/widget/projects.dart';
import 'package:idream_assessment/app/home/widget/show_dialoge_language.dart';
import 'package:idream_assessment/app/home/widget/show_dialogue_class.dart';
import 'package:idream_assessment/app/home/widget/text_sections.dart';
import 'package:idream_assessment/app/home/widget/your_subject.dart';
import 'package:idream_assessment/app/utils/app_colors.dart';
import 'package:idream_assessment/app/utils/app_size.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final homePro = Provider.of<HomeProvider>(context);
    return StreamBuilder(
      stream: homePro.projectData.snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        List<ProjectModel> project =
            FirebaseService.convertToListProjects(streamSnapshot);
        return project.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : StreamBuilder(
                stream: homePro.booksData.snapshots(),
                builder:
                    (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                  List<BooksModel> book =
                      FirebaseService.convertToListBooks(streamSnapshot);
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
                                homePro.classList.first < 10
                                    ? "Class 0${homePro.classList.first.toString()}"
                                    : "Class ${homePro.classList.first.toString()}",
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
                            onTap: () => ShowLanguage.showSimpleDialog(context),
                            child: Chip(
                              backgroundColor: AppColors.kChipColor,
                              label: Text(
                                homePro.indexListTile == 0 ? "Eng" : "हिन्दी",
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
                          TextSections(
                            data:
                                homePro.indexListTile == 0 ? "Books" : "पुस्तक",
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              children: [
                                for (var i = 0; i < book.length; i++)
                                  BooksSection(
                                    assetName: book[i].image.toString(),
                                    data: homePro.indexListTile == 0
                                        ? book[i].name.toString()
                                        : book[i].hindi.toString(),
                                    subTitle: book[i].subtitle.toString(),
                                  ),
                              ],
                            ),
                          ),
                          TextSections(
                            data: homePro.indexListTile == 0
                                ? "Projects"
                                : " परियोजनाओं",
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              children: [
                                for (var i = 0; i < project.length; i++)
                                  ProjectSection(
                                    assetName: project[i].image.toString(),
                                    data: homePro.indexListTile == 0
                                        ? project[i].name.toString()
                                        : project[i].hindi.toString(),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    bottomNavigationBar: BottomNavigationBar(
                      items: const [
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home), label: "Notes"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.auto_graph_sharp),
                            label: "My Reports"),
                      ],
                    ),
                  );
                },
              );
      },
    );
  }
}
