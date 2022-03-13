import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqi/color.dart';
import 'package:sqi/portal.dart';

class SemResult extends StatelessWidget {
  const SemResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: MyDrawer(),
        body: Container(
          height: 200,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: white,
            boxShadow: [BoxShadow(color: lgrey, spreadRadius: 1, blurRadius: .5)]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("SEMESTER RESULT"),
               SizedBox(
                child: Container(color: lgrey,),
                width: MediaQuery.of(context).size.width,
                height:2
              ),
              SizedBox(height: 15,),
              Text("No result yet")
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.print_sharp),
          backgroundColor: deepBlue,
        ),
      ),
    );
  }
}
