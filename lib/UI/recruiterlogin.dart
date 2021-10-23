import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class RLoginPage extends StatefulWidget {
  @override
  _RLoginPageState createState() => _RLoginPageState();
}

class _RLoginPageState extends State<RLoginPage> {
  var authc = FirebaseAuth.instance;

  String email;
  String password;
  bool sspin = false;
  @override
  Widget build(BuildContext context) {
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    AlertDialog alert = AlertDialog(
      title: Center(
        child: Text(
          "Error in sign in",
          style: TextStyle(
            color: Colors.red,
            fontSize: 25,
          ),
        ),
      ),
      content: Text(
        "       Invalid Credentials !!!",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      actions: [
        okButton,
      ],
    );
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: sspin,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 400,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: -40,
                      height: 400,
                      width: width,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/background.png'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Positioned(
                      height: 400,
                      width: width + 20,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/background.png'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Positioned(
                        child: Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Center(
                        child: Text(
                          "Recruiter Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(196, 135, 198, .3),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                            )
                          ]),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[200]))),
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (value) {
                                email = value;
                              },
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter Email",
                                  hintStyle:
                                      TextStyle(color: Colors.grey.shade600)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              obscureText: true,
                              onChanged: (value) {
                                password = value;
                              },
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter Password",
                                  hintStyle:
                                      TextStyle(color: Colors.grey.shade600)),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      color: Colors.indigo.shade400,
                      borderRadius: BorderRadius.circular(10),
                      elevation: 10,
                      child: MaterialButton(
                        minWidth: 350,
                        height: 40,
                        child: Text(
                          'LOGIN',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'recruiter');
                        },
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
