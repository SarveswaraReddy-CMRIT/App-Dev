import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lab10/login.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBZvv48m7A5x6ytrNd2LThibrFo_oG4a8s",
        appId: "1:574867439662:android:84aa5168528cbfd5905fbf",
        messagingSenderId: "574867439662",
        projectId: "lab10-ba703"),
  )
      :await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          // Check for Errors
          if (snapshot.hasError) {
            print("Something Went Wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          return MaterialApp(
            title: 'Flutter Firebase EMail Password Auth',
            theme: ThemeData(
              primarySwatch: Colors.deepOrange,
            ),
            debugShowCheckedModeBanner: false,
            home: Login(),
          );
        });
  }
}

