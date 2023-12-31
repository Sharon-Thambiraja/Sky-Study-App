import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quiz_app_pilot/home.dart';
import 'package:quiz_app_pilot/login.dart';
import 'package:quiz_app_pilot/newwelcomeScreen.dart';
import 'package:quiz_app_pilot/screens/welcome/addQuestion.dart';
import 'package:quiz_app_pilot/screens/welcome/quiz/quiz_screen.dart';
import 'package:quiz_app_pilot/screens/welcome/score/display_score.dart';
import 'package:quiz_app_pilot/screens/welcome/score/score_screen.dart';
import 'package:quiz_app_pilot/screens/welcome/welcome_screen.dart';
import 'package:quiz_app_pilot/signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:quiz_app_pilot/start.dart';
import 'package:quiz_app_pilot/userinfo.dart';
import 'package:quiz_app_pilot/userscreen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (ctx, userSnapshot) {
          if (userSnapshot.hasData) {
            print(userSnapshot.data);
            return MyStatelessWidget();
          }

          return NewWelcomeScreen();
        },
      ),
    );
  }
}
