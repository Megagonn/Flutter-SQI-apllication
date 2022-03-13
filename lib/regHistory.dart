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
          height: 200,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: white,
            boxShadow: [BoxShadow(color: lgrey, spreadRadius: 1, blurRadius: .5),]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("REGISTRATION HISTORY"),
              SizedBox(height: 15,),
              SizedBox(
                child: Container(color: lgrey,),
                width: MediaQuery.of(context).size.width,
                height:2
              ),
              SizedBox(height: 15,),
              Text("No history available", style: TextStyle(fontSize: 14),),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
          child: Icon(Icons.print_sharp, ),
          backgroundColor: deepBlue,
        ),
      ),
    );
  }
}