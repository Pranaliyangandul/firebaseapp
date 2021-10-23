import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:paginate_firestore/paginate_firestore.dart';
import 'package:intl/intl.dart';

class CppApplicantsPage extends StatefulWidget {
  @override
  _CppApplicantsPageState createState() => _CppApplicantsPageState();
}

class _CppApplicantsPageState extends State<CppApplicantsPage> {
  String choosevalue;
  List listitems = ['experience', 'graduation'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'C++ Applicants',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: PaginateFirestore(
        //item builder type is compulsory.
        itemBuilderType:
            PaginateBuilderType.listView, //Change types accordingly
        itemBuilder: (index, context, documentSnapshot) => ListTile(
          leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.donut_large,
                color: Colors.teal,
              )),
          title: Text(
            "Applicant Name : " + documentSnapshot.data()['name'],
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          subtitle: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Email-id :  ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    documentSnapshot.data()['email'],
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Experience :  ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    documentSnapshot.data()['experience'].toString(),
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
            ],
          ),
        ),
        // orderBy is compulsory to enable pagination
        query:
            FirebaseFirestore.instance.collection('Cpp').orderBy('experience'),
      ),
    );
  }
}
