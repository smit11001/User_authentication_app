import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:user_authentication_database/screens/AdminPage.dart';
import 'package:user_authentication_database/screens/Homepage.dart';
import 'package:user_authentication_database/screens/Login.dart';
import 'package:user_authentication_database/screens/SplashScreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context)=>  SplashScreenPage(),
        'login_page': (context)=>  LoginPage(),
        'homepage': (context)=>  HomePage(),
        'adminPage': (context)=>  AdminPage(),
      },
    )
  );
}

