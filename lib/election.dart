import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqi/portal.dart';

class Election extends StatelessWidget {
  const Election({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          alignment: Alignment.topCenter,
          child: Text('NO ELECTION AVAILABLE', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
        ),
      ),
    );
  }
}