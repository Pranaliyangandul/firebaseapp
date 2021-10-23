
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecruiterPage extends StatefulWidget {
  @override
  _RecruiterPageState createState() => _RecruiterPageState();
}

class _RecruiterPageState extends State<RecruiterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                "We're Hiring !!!",
                style: TextStyle(
                    //color: Colors.blue,
                    fontSize: 35,
                    height: 1.3,
                    //fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          courseWidget(
                              '5 - 8 LPA (1+ yr]',
                              '   Python Developer',
                              'py',
                              Color(0xffe9eefa),
                              Colors.teal[200],
                              'pythonapplicants'),
                          SizedBox(
                            height: 20,
                          ),
                          courseWidget(
                              '10 LPA [2+ yr]',
                              'JavaScript  Developer',
                              'js',
                              Color(0xffe9eefa),
                              Colors.white,
                              'jsapplicants'),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            height: 50,
                          ),
                          courseWidget(
                            '7+ LPA [1.5+ yr]',
                            '    Java Developer',
                            'java',
                            Color(0xffe9eefa),
                            Colors.white,
                            'javaapplicants',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          courseWidget(
                              '5 LPA [0.5+ yr]',
                              '     C++ Developer',
                              'cpp',
                              Color(0xffe9eefa),
                              Colors.teal[200],
                              'cppapplicants'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "chatbot");
        },
        child: Icon(Icons.chat),
        backgroundColor: Colors.blue,
      ),
    );
  }

  Container courseWidget(String category, String title, String img,
      Color categoryColor, Color bgColor, String nav) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: InkWell(
        onTap: () {
          openCoursePage(nav);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: categoryColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  '$category',
                  style: TextStyle(
                      color: (categoryColor == Color(0xffe9eefa)
                          ? Color(0xff2657ce)
                          : Colors.white)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                '$title',
                style: TextStyle(
                  color: (bgColor == Color(0xffff5954))
                      ? Colors.white
                      : Colors.black,
                  fontSize: 23,
                  height: 1,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Hero(
              tag: '$img',
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/$img.png'),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }

  void openCoursePage(String nav) {
    Navigator.pushNamed(context, nav);
  }
}
