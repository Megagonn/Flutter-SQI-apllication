import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqi/color.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
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
              height: 150,
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
                padding: EdgeInsets.all(15),
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


// class Graphe extends StatelessWidget {
//   const Graphe({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: LineGraph(features: features, size: size),
//     );
//   }
// }



// class Feature extends StatelessWidget {
//   const Feature({ Key? key,required this.data,required this.title,required this.color }) : super(key: key);
//   final List<double> data;
//   final String title;
//   final Color color;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }

// List<Feature> features = [
//   Feature(
//     title: "Drink Water",
//     color: Colors.blue,
//     data: [0.2, 0.8, 1, 0.7, 0.6],
//   ),
//   Feature(
//     title: "Exercise",
//     color: Colors.pink,
//     data: [1, 0.8, 6, 0.7, 0.3, 8],
//   ),
// ];