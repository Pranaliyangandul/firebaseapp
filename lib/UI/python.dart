import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tesseract_ocr/tesseract_ocr.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

// Create a Form widget.
class PythonForm extends StatefulWidget {
  @override
  PythonFormState createState() {
    return PythonFormState();
  }
}

// Create a corresponding State class, which holds data related to the form.
class PythonFormState extends State<PythonForm> {
  // Create a global key that uniquely identifies the Form widget
  // https://mydbName.firebaseio.com/
  // and allows validation of the form.
  //
  final _formKey = GlobalKey<FormState>();
  String n, d, de, c;
  int y, p, e;
  var authc = FirebaseAuth.instance;
  bool _scanning = false;
  String _extractText = '';
  PickedFile _pickedImage;
  //var fs = FirebaseFirestore.instance;
  final fieldText1 = TextEditingController();
  final fieldText2 = TextEditingController();
  final fieldText3 = TextEditingController();
  final fieldText4 = TextEditingController();
  final fieldText5 = TextEditingController();
  final fieldText6 = TextEditingController();
  final fieldText7 = TextEditingController();

  void clearText() {
    fieldText1.clear();
    fieldText2.clear();
    fieldText3.clear();
    fieldText4.clear();
    fieldText5.clear();
    fieldText6.clear();
    fieldText7.clear();
  }

  final ImagePicker _picker = ImagePicker();

  pyfunc(n, p, d, de, c, y, e) async {
    await FirebaseFirestore.instance.collection('Python').add({
      "email": authc.currentUser.email,
      "name": n,
      "phone": p,
      "dob": d,
      "college": c,
      "degree": de,
      "year": y,
      "experience": e,
    });
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.indigo.shade300,
        title: Center(
            child: Text(
          "Python Developer",
          style: TextStyle(fontSize: 27),
        )),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                "Job Description",
                style: TextStyle(fontSize: 25),
              )),
              SizedBox(
                height: 10,
              ),
              Text(
                "Python Developer responsibilities include writing and testing code, debugging programs and integrating applications with third-party web services. To be successful in this role, you should have experience using server-side logic and work well in a team.",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                "Please enter your details",
                style: TextStyle(fontSize: 22),
              )),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: fieldText1,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Enter your full name',
                  labelText: 'Name',
                ),
                onChanged: (value) {
                  n = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: fieldText2,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.phone),
                  hintText: 'Enter a phone number',
                  labelText: 'Phone',
                ),
                onChanged: (value) {
                  p = int.parse(value);
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter valid phone number';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: fieldText3,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.calendar_today),
                  hintText: 'Enter your date of birth',
                  labelText: 'Dob',
                ),
                onChanged: (value) {
                  d = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter valid date';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: fieldText4,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.home),
                  hintText: 'Enter your College Name',
                  labelText: 'College Name',
                ),
                onChanged: (value) {
                  c = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: fieldText5,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.details),
                  hintText: 'Enter your degree',
                  labelText: 'Degree',
                ),
                onChanged: (value) {
                  de = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: fieldText6,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.details),
                  hintText: 'Enter your graduation year',
                  labelText: 'Graduation year',
                ),
                onChanged: (value) {
                  y = int.parse(value);
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: fieldText7,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.details),
                  hintText: 'Enter years of experience',
                  labelText: 'Years of experience',
                ),
                onChanged: (value) {
                  e = int.parse(value);
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              /*_pickedImage == null
                  ? Container(
                      height: 300,
                      color: Colors.grey[300],
                      child: Icon(
                        Icons.image,
                        size: 100,
                      ),
                    )
                  : Container(
                      height: 300,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          image: DecorationImage(
                            image: Image.file(_pickedImage),
                            fit: BoxFit.fill,
                          )),
                    ),*/
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: RaisedButton(
                  color: Colors.green,
                  child: Text(
                    'Pick Image with text',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () async {
                    setState(() {
                      _scanning = true;
                    });
                    _pickedImage =
                        await _picker.getImage(source: ImageSource.gallery);
                    _extractText =
                        await TesseractOcr.extractText(_pickedImage.path);
                    setState(() {
                      _scanning = false;
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              _scanning
                  ? Center(child: CircularProgressIndicator())
                  : Icon(
                      Icons.done,
                      size: 40,
                      color: Colors.green,
                    ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  _extractText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Material(
                  color: Colors.indigo.shade300,
                  borderRadius: BorderRadius.circular(10),
                  elevation: 10,
                  child: MaterialButton(
                    minWidth: 200,
                    height: 40,
                    child: Text(
                      'APPLY',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      print(_extractText);
                      pyfunc(n, p, d, de, c, y, e);
                      Toast.show("Applied Successfully !", context,
                          backgroundColor: Colors.indigo[300],
                          textColor: Colors.white,
                          duration: Toast.LENGTH_SHORT,
                          gravity: Toast.CENTER);

                      clearText();
                      //sleep(const Duration(seconds: 5));
                      //Navigator.of(context).pop();
                      // print("succes");
                      // It returns true if the form is valid, otherwise returns false
                      /*if (_formKey.currentState.validate()) {
                        // If the form is valid, display a Snackbar.
                        Scaffold.of(context).showSnackBar(
                            SnackBar(content: Text('Data is in processing.')));
                      }*/
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
