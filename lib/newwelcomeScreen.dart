import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app_pilot/login.dart';
import 'package:quiz_app_pilot/models/Questions.dart';
import 'package:quiz_app_pilot/screens/welcome/quiz/quiz_screen.dart';
import 'package:quiz_app_pilot/signin.dart';

import '../../constants.dart';
import 'package:firebase_database/firebase_database.dart';

class NewWelcomeScreen extends StatelessWidget {
  List<Question> _questions = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1C2341),
        body: SingleChildScrollView(
          child: Container(
              color: Color(0xFF1C2341),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(19.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80,
                        ), //2/6
                        Center(
                          child: Text(
                            "Welcome To \nSky Study",
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                            textAlign: TextAlign
                                .center, // To center-align the text horizontally within the Text widget
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        // 1/6
                        Container(
                          child: Lottie.asset('assets/icons/plane2.json'),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        InkWell(
                          onTap: () => Get.to(LoginScreen()),
                          // Pass contex,
                          child: Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            padding:
                                EdgeInsets.all(kDefaultPadding * 0.75), // 15
                            decoration: BoxDecoration(
                              gradient: kPrimaryGradient,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Text(
                              "Log In",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  ?.copyWith(color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        InkWell(
                          onTap: () => Get.to(SignInScreen()),
                          // Pass contex,
                          child: Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            padding:
                                EdgeInsets.all(kDefaultPadding * 0.75), // 15
                            decoration: BoxDecoration(
                              gradient: kPrimaryGradient,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Text(
                              "Sign Up",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  ?.copyWith(color: Colors.black),
                            ),
                          ),
                        ), // it will take 2/6 spaces
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }
}
