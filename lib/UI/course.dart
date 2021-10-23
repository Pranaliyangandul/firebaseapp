import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Hello Developers ! ",
                  style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/profilePic.png'))),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'What do you \nwant to \nlearn today?',
              style: TextStyle(
                  fontSize: 35, height: 1.3, fontWeight: FontWeight.w700),
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
                          courseWidget('Python for everybody', 'img1',
                              Color(0xffff5954), 'pythonlec'),
                          SizedBox(
                            height: 20,
                          ),
                          courseWidget(
                            'Javascript for\n     Web Developers',
                            'img2',
                            Colors.white,
                            'jslec',
                          ),
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
                            'C++ Course',
                            'img3',
                            Colors.white,
                            'cpplec',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          courseWidget(
                            'Java Course',
                            'img4',
                            Color(0xffcedaff),
                            'javalec',
                          ),
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

  Container courseWidget(String title, String img, Color bgColor, String nav) {
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
            Text(
              '$title',
              style: TextStyle(
                color: (bgColor == Color(0xffff5954))
                    ? Colors.white
                    : Colors.black,
                fontSize: 20,
                height: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 5,
                  width: 100,
                  color: (bgColor == Color(0xffff5954))
                      ? Colors.red
                      : Color(0xff2657ce),
                ),
                Expanded(
                  child: Container(
                    height: 5,
                    color: (bgColor == Color(0xffff5954))
                        ? Colors.white.withOpacity(0.5)
                        : Color(0xff2657ce).withOpacity(0.5),
                  ),
                )
              ],
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
