import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegPage extends StatefulWidget {
  @override
  _RegPageState createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  var authc = FirebaseAuth.instance;

  String email;

  String password;

  @override
  Widget build(BuildContext context) {
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    AlertDialog alert = AlertDialog(
      title: Text("      Warning !!!"),
      content: Text("Password length must be greater than 6"),
      actions: [
        okButton,
      ],
    );
    AlertDialog alert1 = AlertDialog(
      title: Text("User exists !!!"),
      content: Text("You have already registered! Please login !!!"),
      actions: [
        okButton,
      ],
    );
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                      )),
                  Positioned(
                      height: 400,
                      width: width + 20,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/background.png'),
                                fit: BoxFit.fill)),
                      )),
                  Positioned(
                      child: Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
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
                                  bottom: BorderSide(color: Colors.grey[200]))),
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
                    color: Colors.indigo.shade300,
                    borderRadius: BorderRadius.circular(10),
                    elevation: 10,
                    child: MaterialButton(
                      minWidth: 400,
                      height: 40,
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () async {
                        try {
                          if (password.length < 6) {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alert;
                              },
                            );
                          } else {
                            var user =
                                await authc.createUserWithEmailAndPassword(
                              email: email,
                              password: password,
                            );

                            if (user.additionalUserInfo.isNewUser == true) {
                              Navigator.pushNamed(context, "elearn");
                            }
                          }
                        } catch (e) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return alert1;
                            },
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            )
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
}
