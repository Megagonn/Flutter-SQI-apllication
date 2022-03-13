import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color.dart';
import 'portal.dart';

class RegHistory extends StatelessWidget {
  const RegHistory({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: MyDrawer(),
        body: Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: lgrey, blurRadius: .5, spreadRadius: 1),
          ], borderRadius: BorderRadius.circular(4)),
          padding: EdgeInsets.all(20),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("SEMESTER RESULT"),
                SizedBox(
                  child: Container(color: lgrey,),
                  width: MediaQuery.of(context).size.width,
                  height:2
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
          },
          label: Icon(Icons.print_sharp),
          backgroundColor: deepBlue,
        ),
      ),
    );
  }
}