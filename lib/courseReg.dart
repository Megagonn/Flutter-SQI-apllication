import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color.dart';
import 'portal.dart';

class CourseReg extends StatefulWidget {
  const CourseReg({Key? key}) : super(key: key);

  @override
  _CourseRegState createState() => _CourseRegState();
}

class _CourseRegState extends State<CourseReg> {
  @override
  Widget build(BuildContext context) {
    var deptCourse;
    var extraCourse;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: MyDrawer(),
        body: Container(
          // margin: EdgeInsets.all(8),
          // decoration: BoxDecoration(boxShadow: [
          //   BoxShadow(color: lgrey, blurRadius: .5, spreadRadius: 1),
          // ], borderRadius: BorderRadius.circular(4)),
          padding: EdgeInsets.all(20),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("COURSE REGISTRATION"),
                      Container(
                        margin: EdgeInsets.only(top: 7),
                        // padding: EdgeInsets.all(8),
                        // decoration: BoxDecoration(boxShadow: [
                        //   BoxShadow(color: lgrey, blurRadius: .5, spreadRadius: 1),
                        // ], borderRadius: BorderRadius.circular(4)),
                        child: Text(
                          "Penalty: 2022-12-21 | Closure: 2022-12-21",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Text(
                          "No registered courses for this semester",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Text(
                        "Total Units: 0",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                    BoxShadow(color: lgrey, spreadRadius: 1, blurRadius: .5)
                  ]),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Flexible(
                              flex: 4,
                              child: DropdownButtonFormField(
                                  onChanged: (val) {
                                    setState(() {
                                      deptCourse = val;
                                    });
                                  },
                                  decoration: InputDecoration(
                                      labelText: "DEPARTMENT COURSES"),
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text("EED 209"),
                                      value: 'eed209',
                                    ),
                                    DropdownMenuItem(
                                      child: Text("JAV 307"),
                                      value: 'jav307',
                                    ),
                                    DropdownMenuItem(
                                      child: Text("MEC 208"),
                                      value: 'mec208',
                                    ),
                                    DropdownMenuItem(
                                      child: Text("JSC 109"),
                                      value: 'jsc109',
                                    ),
                                    DropdownMenuItem(
                                      child: Text("PYT 332"),
                                      value: 'pyt332',
                                    ),
                                    DropdownMenuItem(
                                      child: Text("DSA 112"),
                                      value: 'dsa112',
                                    ),
                                    DropdownMenuItem(
                                      child: Text("SQL 205"),
                                      value: 'sql205',
                                    ),
                                    DropdownMenuItem(
                                      child: Text("MUL 317"),
                                      value: 'mul317',
                                    ),
                                  ],),
                            ),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Add'),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(deepBlue),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Flexible(
                              flex: 4,
                              child: DropdownButtonFormField(
                                onChanged: (val) {
                                    setState(() {
                                      extraCourse = val;
                                    });
                                  },
                                  decoration: InputDecoration(
                                      labelText:
                                          "EXTRA COURSES(STRICTLY FOR ROBOTICS STUDENT)"),
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text("EED 209"),
                                      value: 'eed209',
                                    ),
                                    DropdownMenuItem(
                                      child: Text("JAV 307"),
                                      value: 'jav307',
                                    ),
                                    DropdownMenuItem(
                                      child: Text("MEC 208"),
                                      value: 'mec208',
                                    ),
                                    DropdownMenuItem(
                                      child: Text("JSC 109"),
                                      value: 'jsc109',
                                    ),
                                    DropdownMenuItem(
                                      child: Text("PYT 332"),
                                      value: 'pyt332',
                                    ),
                                    DropdownMenuItem(
                                      child: Text("DSA 112"),
                                      value: 'dsa112',
                                    ),
                                    DropdownMenuItem(
                                      child: Text("SQL 205"),
                                      value: 'sql205',
                                    ),
                                    DropdownMenuItem(
                                      child: Text("MUL 317"),
                                      value: 'mul317',
                                    ),
                                  ],),
                            ),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Add', style: TextStyle(color: deepBlue),),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(white),
                              ),
                            )
                          ],
                        )
                      ]),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Icon(Icons.print_sharp),
          backgroundColor: deepBlue,
        ),
      ),
    );
  }
}
