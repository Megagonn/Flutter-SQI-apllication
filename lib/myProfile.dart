import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqi/color.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Object country = "";
    Object state = "";
    Object gender = "";
    Object maritalStatus = "";
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("PROFILE"),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: white,
                        child: Icon(Icons.person_sharp),
                      ),
                      Positioned(
                        top: 30,
                        right: 0,
                        child: Icon(
                          Icons.photo_camera_outlined,
                          color: deepBlue,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: deepBlue,
                          child: Text("1"),
                        ),
                        Text(
                          "Personal Data",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: lgrey,
                          child: Text("2"),
                        ),
                        Text(
                          "Contact",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: deepBlue,
                          child: Text("3"),
                        ),
                        Text(
                          "Referee",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 200,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Surname",
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.none),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "First Name",
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.none),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Middle Name",
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.none),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Date of Birth",
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.none),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: DropdownButtonFormField(
                        // value: 4,
                        isExpanded: true,
                        onChanged: (val) {
                          country = val!;
                        },
                        // hint: Text(""),
                        decoration: InputDecoration(labelText: "Nationality"),
                        items: [
                          DropdownMenuItem(
                            child: Text("Albania"),
                            value: "Albania",
                          ),
                          DropdownMenuItem(
                            child: Text("Cyprus"),
                            value: "Cyprus",
                          ),
                          DropdownMenuItem(
                            child: Text("Nigeria"),
                            value: "nigeria",
                          ),
                          DropdownMenuItem(
                            child: Text("Turkey"),
                            value: "turkey",
                          ),
                          DropdownMenuItem(
                            child: Text("Qatar"),
                            value: "qatar",
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: DropdownButtonFormField(
                        // value: 4,
                        isExpanded: true,
                        onChanged: (val) {
                          state = val!;
                        },
                        // hint: Text(""),
                        decoration: InputDecoration(labelText: "State of Origin"),
                        items: [
                          DropdownMenuItem(
                            child: Text("Abia"),
                            value: "Abia",
                          ),
                          DropdownMenuItem(
                            child: Text("Anambra"),
                            value: "Anambra",
                          ),
                          DropdownMenuItem(
                            child: Text("Borno"),
                            value: "Borno",
                          ),
                          DropdownMenuItem(
                            child: Text("Cross River"),
                            value: "Cross River",
                          ),
                          DropdownMenuItem(
                            child: Text("Delta"),
                            value: "Delta",
                          ),
                          DropdownMenuItem(
                            child: Text("Ekiti"),
                            value: "Ekiti",
                          ),
                          DropdownMenuItem(
                            child: Text("FCT"),
                            value: "FCT",
                          ),
                          DropdownMenuItem(
                            child: Text("Kano"),
                            value: "Kano",
                          ),
                          DropdownMenuItem(
                            child: Text("Katsina"),
                            value: "Katsina",
                          ),
                          DropdownMenuItem(
                            child: Text("LAGOS"),
                            value: "lAGOS",
                          ),
                          DropdownMenuItem(
                            child: Text("Ondo"),
                            value: "Ondo",
                          ),
                          DropdownMenuItem(
                            child: Text("Osun"),
                            value: "Osun",
                          ),
                          DropdownMenuItem(
                            child: Text("Oyo"),
                            value: "Oyo",
                          ),
                          DropdownMenuItem(
                            child: Text("Zamfara"),
                            value: "Zamfara",
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: DropdownButtonFormField(
                        // value: 4,
                        isExpanded: true,
                        onChanged: (val) {
                          gender = val!;
                        },
                        // hint: Text(""),
                        decoration: InputDecoration(labelText: "Gender"),
                        items: [
                          DropdownMenuItem(
                            child: Text("Male"),
                            value: "Male",
                          ),
                          DropdownMenuItem(
                            child: Text("Female"),
                            value: "Female",
                          ),
                          DropdownMenuItem(
                            child: Text("Other"),
                            value: "Other",
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: DropdownButtonFormField(
                        // value: 4,
                        isExpanded: true,
                        onChanged: (val) {
                          maritalStatus = val!;
                        },
                        // hint: Text(""),
                        decoration: InputDecoration(labelText: "Marital Status"),
                        items: [
                          DropdownMenuItem(
                            child: Text("Single"),
                            value: "Single",
                          ),
                          DropdownMenuItem(
                            child: Text("Married"),
                            value: "Married",
                          ),
                          DropdownMenuItem(
                            child: Text("Divorce"),
                            value: "Divorce",
                          ),
                        ],
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
}
