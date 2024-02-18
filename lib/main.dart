// ignore_for_file: unused_import

import 'package:base/SecondPage.dart';
import 'package:base/google_map.dart';
import 'package:base/login.dart';
import 'package:base/Signup.dart';
import 'package:base/nav.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'FirstPage.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
