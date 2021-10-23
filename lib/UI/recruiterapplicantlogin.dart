import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RALoginPage extends StatefulWidget {
  @override
  _RALoginPageState createState() => _RALoginPageState();
}

class _RALoginPageState extends State<RALoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Home')),
      ),
      backgroundColor: Colors.blue[50],
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              child: InkWell(
                onTap: () {
                  openCoursePage('recruiterlogin');
                },
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 1,
                    ),
                    Hero(
                      tag: 'img1',
                      child: Container(
                        height: 130,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/images/img2.png'),
                        )),
                      ),
                    ),
                    Container(
                      //padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        // color: Colors.teal[200],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Center(
                        child: Text(
                          'Recruiter Login',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        //color: Colors.teal[200],
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: InkWell(
                        onTap: () {
                          openCoursePage('home');
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Hero(
                              tag: 'img2',
                              child: Container(
                                height: 130,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage('assets/images/img1.png'),
                                )),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'Applicant Login',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.teal,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
