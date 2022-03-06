import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqi/color.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
                child: Column(
              children: [
                Row(
                  children: [
                    MyCard(
                        icon: Icons.person_sharp,
                        id: '210207',
                        label: 'Student Id', color: Colors.blueGrey.shade600,),
                    MyCard(
                        icon: Icons.stairs_outlined,
                        id: "LEVEL 2|S",
                        label: 'Level|Semester', color: Colors.blue.shade500,)
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    MyCard(icon: Icons.auto_graph_rounded, id: "", label: "Current CGPA", color: Colors.red.shade500),
                    MyCard(icon: Icons.class__outlined, id: 'DSE-DS|PDC', label: 'Dept|Programme', color: deepBlue),
                  ],
                )
              ],
            ))
          ],
        ));
  }
}

class MyCard extends StatelessWidget {
  const MyCard(
      {Key? key, required this.icon, required this.id, required this.label,required this.color})
      : super(key: key);
  final IconData icon;
  final String id;
  final String label;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 3,
          shadowColor: lgrey,
          clipBehavior: Clip.hardEdge,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(icon, color: color,),
                  Text(id),
                ],
              ),
              Divider(
                color: lgrey,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text(label)],
              )
            ],
          ),
        ),
      ),
    );
  }
}
