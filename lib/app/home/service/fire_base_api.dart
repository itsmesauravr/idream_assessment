import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:idream_assessment/app/home/model/books_model.dart';
import 'package:idream_assessment/app/home/model/projects_model.dart';
import 'package:idream_assessment/app/home/model/subject_model.dart';

class FirebaseService {
  static List<SubjectsModel> convertToList(
      AsyncSnapshot<QuerySnapshot> snapshot) {
    if (snapshot.hasData) {
      List<SubjectsModel> newList = snapshot.data!.docs.map((convert) {
        return SubjectsModel.fromJson(convert.data() as Map<String, dynamic>);
      }).toList();
      return newList;
    } else {
      return [];
    }
  }

  static List<BooksModel> convertToListBooks(
      AsyncSnapshot<QuerySnapshot> snapshot) {
    if (snapshot.hasData) {
      List<BooksModel> newList = snapshot.data!.docs.map((convert) {
        return BooksModel.fromJson(convert.data() as Map<String, dynamic>);
      }).toList();
      return newList;
    } else {
      return [];
    }
  }

  static List<ProjectModel> convertToListProjects(
      AsyncSnapshot<QuerySnapshot> snapshot) {
    if (snapshot.hasData) {
      List<ProjectModel> newList = snapshot.data!.docs.map((convert) {
        return ProjectModel.fromJson(convert.data() as Map<String, dynamic>);
      }).toList();
      return newList;
    } else {
      return [];
    }
  }
}
