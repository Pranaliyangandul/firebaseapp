import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChoicePage extends StatefulWidget {
  @override
  _ChoicePageState createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Menu",
          style: TextStyle(fontSize: 30),
        )),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification'),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help & feedback'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About app'),
            ),
          ],
        ),
      ),

      // backgroundColor: Colors.deepPurple[50],
      body: Container(
        // padding: EdgeInsets.only(top: 20, left: 30, right: 30),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 200,
              child: Carousel(
                boxFit: BoxFit.cover,
                autoplay: true,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 500),
                dotSize: 3.0,
                dotColor: Colors.grey,
                indicatorBgPadding: 9.0,
                images: [
                  AssetImage('assets/images/jobs.jfif'),
                  AssetImage('assets/images/learn.jpg'),
                  AssetImage('assets/images/quiz.jfif'),
                  AssetImage('assets/images/chatbot.png'),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(30),
                      //width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          courseWidget(
                            'Courses',
                            'course',
                            Color(0xffe9eefa),
                            Colors.purple[700],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          courseWidget(
                            'QuizStar',
                            'splash',
                            Color(0xffe9eefa),
                            Colors.deepPurple[300],
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
                            '   Job Profiles',
                            'jobs',
                            Color(0xffe9eefa),
                            Colors.deepPurple[300],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          courseWidget(
                            '     AI recruiter',
                            'chat',
                            Color(0xffe9eefa),
                            Colors.purple[700],
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

  Container courseWidget(
      String title, String nav, Color categoryColor, Color bgColor) {
    return Container(
      // height: 100,
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(150)),
      ),
      child: InkWell(
        onTap: () {
          openCoursePage(nav);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 130,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: categoryColor,
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: Center(
                child: Text(
                  '$title',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Colors.deepPurple),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void openCoursePage(String nav) {
    Navigator.pushNamed(context, nav);
  }
}
