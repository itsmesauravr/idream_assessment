import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:idream_assessment/app/home/view/home_screen.dart';
import 'package:idream_assessment/app/home/view_model/home_view_model.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
