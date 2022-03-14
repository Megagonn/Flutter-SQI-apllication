import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqi/portal.dart';

import 'color.dart';
import 'dashboard.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: MyCard(
                              icon: Icons.person_sharp,
                              id: '210207',
                              label: 'Student Id',
                              color: Colors.blueGrey.shade600,
                            ),
                          ),
                          Expanded(
                            child: MyCard(
                              icon: Icons.stairs_outlined,
                              id: "LEVEL 2|S",
                              label: 'Level|Semester',
                              color: Colors.blue.shade500,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: MyCard(
                                  icon: Icons.auto_graph_rounded,
                                  id: "",
                                  label: "Current CGPA",
                                  color: Colors.red.shade500)),
                          Expanded(
                              child: MyCard(
                                  icon: Icons.class__outlined,
                                  id: 'DSE-DS|PDC',
                                  label: 'Dept|Programme',
                                  color: deepBlue)),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  height: 200,
                  child: Card(
                    shadowColor: lgrey,
                    elevation: 3,
                    clipBehavior: Clip.hardEdge,
                    child: Center(
                      child: Text("Graph"),
                    ),
                  ),
                ),
                Card(
                  shadowColor: lgrey,
                  elevation: 3,
                  clipBehavior: Clip.hardEdge,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    // height: 70,
                    child: Column(
                      children: [
                        Text("PORTAL CLOSES IN:"),
                        Text(
                          '104 hours',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shadowColor: lgrey,
                  elevation: 3,
                  clipBehavior: Clip.hardEdge,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(vertical: 15),
                    padding: EdgeInsets.all(10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("STAT"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Tuition:"),
                              SizedBox(width: 20),
                              Icon(
                                Icons.check_outlined,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Course Registration:"),
                              SizedBox(width: 20),
                              Icon(
                                Icons.close_outlined,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard(
      {Key? key,
      required this.icon,
      required this.id,
      required this.label,
      required this.color})
      : super(key: key);
  final IconData icon;
  final String id;
  final String label;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      child: Card(
        elevation: 3,
        shadowColor: lgrey,
        clipBehavior: Clip.hardEdge,
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    icon,
                    color: color,
                  ),
                  Text(
                    id,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Divider(
                color: lgrey,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(label),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TuitionPayment extends StatelessWidget {
  const TuitionPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(),
        body: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(8),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "TUITION PAYMENT",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "You do not have any payment to make yet",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TuitionPayment2 extends StatelessWidget {
  const TuitionPayment2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(8),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "TUITION PAYMENT",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "You do not have any payment to make yet",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
