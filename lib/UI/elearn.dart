import 'package:firebase_app/UI/choice.dart';
import 'package:flutter/material.dart';

class Elearnpage extends StatefulWidget {
  @override
  _ElearnpageState createState() => _ElearnpageState();
}

class _ElearnpageState extends State<Elearnpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff5954),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    "Online learning",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        height: 1),
                  ),
                ),
                Container(
                  child: Text(
                    "is not the next",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        height: 1),
                  ),
                ),
                Container(
                  child: Text(
                    "big thing,",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        height: 1),
                  ),
                ),
                Container(
                  child: Text(
                    "it is now the",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        height: 1),
                  ),
                ),
                Container(
                  child: Text(
                    "BIG THING,",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        height: 1),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/splash.png'),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                bottom: 50,
                left: 0,
                right: 0,
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "choice");
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Text(
                        'Continue..',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
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
}
