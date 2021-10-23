import 'package:flutter/material.dart';
import 'package:firebase_app/components/reusable_cards.dart';

class LectureListScreen extends StatefulWidget {
  @override
  _LectureListScreenState createState() => _LectureListScreenState();
}

class _LectureListScreenState extends State<LectureListScreen> {
  Map<int, String> _lecturesPDF = {
    //ToDo: put links for lectures from Firebase Storage in single quotes
    1: 'https://www.tutorialspoint.com/python3/python_tutorial.pdf',
    2: '',
    3: '',
    4: '',
    5: '',
    6: '',
    7: '',
    8: '',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Python'), // Module 1
      ),
      body: SafeArea(
        child: ListView(
          children: [
            URLCard(
              title: 'Lecture 1 : Python & its history', // Lecture 1
              subtitle:
                  'Python is a general purpose, dynamic, high-level, and interpreted programming language.', // Lecture description
              url: _lecturesPDF[1],
            ),
            URLCard(
              title: 'Lecture 2: Features of Python',
              subtitle:
                  'Python provides many useful features which make it popular and valuable from the other programming languages.',
              url: _lecturesPDF[2],
            ),
            URLCard(
              title: 'Lecture 3:Python Applications',
              subtitle:
                  'Python makes its presence in every emerging field. It is the fastest-growing programming language and can develop any application.',
              url: _lecturesPDF[3],
            ),
            URLCard(
              title: 'Lecture 4:Python Data Types',
              subtitle:
                  'Variables can hold values, and every value has a data-type. Python is a dynamically typed language',
              url: _lecturesPDF[4],
            ),
            URLCard(
              title: 'Lecture 5 : Python Operators',
              subtitle:
                  'The operator can be defined as a symbol which is responsible for a particular operation between two operands',
              url: _lecturesPDF[5],
            ),
            URLCard(
              title: 'Lecture 6 : Python If-else statements',
              subtitle:
                  'Decision making is the most important aspect of almost all the programming languages',
              url: _lecturesPDF[6],
            ),
            URLCard(
              title: 'Lecture 7 : Python Loops',
              subtitle:
                  'Python provide various types of loops which are capable of repeating some specific code several numbers of times',
              url: _lecturesPDF[7],
            ),
            URLCard(
              title: 'Lecture 8 : Python Functions',
              subtitle:
                  'A function can be defined as the organized block of reusable code, which can be called whenever required.',
              url: _lecturesPDF[8],
            ),
          ],
        ),
      ),
    );
  }
}
