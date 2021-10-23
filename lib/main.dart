import 'package:firebase_app/UI/CourseDetails.dart';
import 'package:firebase_app/UI/choice.dart';
import 'package:firebase_app/UI/pythonlec.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'UI/cppapplicants.dart';
import 'UI/elearn.dart';
import 'UI/home.dart';

import 'UI/homepg.dart';
import 'UI/javaapplicants.dart';
import 'UI/jsapplicants.dart';
import 'UI/login.dart';
import 'UI/pythonapplicants.dart';
import 'UI/recruiter.dart';
import 'UI/recruiterlogin.dart';
import 'UI/reg.dart';
import 'UI/course.dart';
//import 'UI/chatbot.dart';
import 'UI/splash.dart';
import 'UI/jobs.dart';
import 'UI/python.dart';
import 'UI/java.dart';

import 'UI/cpp.dart';
import 'UI/javascript.dart';
import 'UI/recruiterapplicantlogin.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Avenir'),
      initialRoute: "recruiterapplicantlogin",
      routes: {
        "recruiterapplicantlogin": (context) => RALoginPage(),
        "home": (context) => MyHome(),
        "reg": (context) => RegPage(),
        "login": (context) => LoginPage(),
        "recruiterlogin": (context) => RLoginPage(),
        "elearn": (context) => Elearnpage(),
        "course": (context) => CoursePage(),
        "CourseDetails": (context) => Coursedetail(),
        //"chatbot": (context) => MyApp(),
        "pythonlec": (context) => LectureListScreen(),
        "splash": (context) => splashscreen(),
        "homepg": (context) => homepage(),
        "choice": (context) => ChoicePage(),
        "jobs": (context) => JobPage(),
        "python": (context) => PythonForm(),
        "java": (context) => JavaForm(),
        "cpp": (context) => CppForm(),
        "javascript": (context) => JsForm(),
        "recruiter": (context) => RecruiterPage(),
        "pythonapplicants": (context) => PythonApplicantsPage(),
        "javaapplicants": (context) => JavaApplicantsPage(),
        "jsapplicants": (context) => JsApplicantsPage(),
        "cppapplicants": (context) => CppApplicantsPage(),
      },
    );
  }
}

class RALogin {}
