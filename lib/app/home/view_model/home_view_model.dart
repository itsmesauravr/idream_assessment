import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  final subjectData = FirebaseFirestore.instance.collection('subjects');
  final booksData = FirebaseFirestore.instance.collection('books');
  final projectData = FirebaseFirestore.instance.collection('projects');

  List<int> classDivision = [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1];

  List<int> classList = [1];
  void classTextDision(index) {
    int classDiv = index;
    for (int i = 1; i <= classDiv + 1; i++) {
      classList.clear();
      classList.add(13 - i);
    }

    notifyListeners();
    log(classList.toString());
  }
}
