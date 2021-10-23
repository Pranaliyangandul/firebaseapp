import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/background.png"),
                        fit: BoxFit.fill)),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/light-1.png"))),
                        )),
                    Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/light-2.png"))),
                        )),
                    Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/clock.png"))),
                        )),
                    Positioned(
                        child: Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Center(
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 33,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(143, 148, 251, .2),
                                blurRadius: 20.0,
                                offset: Offset(0, 10))
                          ]),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[100]))),
                            child: Material(
                              //  color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(10),
                              elevation: 15,
                              child: MaterialButton(
                                minWidth: 300,
                                height: 45,
                                child: Text(
                                  'REGISTER',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.indigo.shade400,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, "reg");
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: Material(
                                //color: Colors.lightBlueAccent,
                                borderRadius: BorderRadius.circular(10),
                                elevation: 15,
                                child: MaterialButton(
                                  minWidth: 300,
                                  height: 45,
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(
                                      fontSize: 26,
                                      color: Colors.indigo.shade400,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "login");
                                  },
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
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
}
