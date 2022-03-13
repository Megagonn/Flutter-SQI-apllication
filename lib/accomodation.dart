import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqi/portal.dart';

class Accomodation extends StatelessWidget {
  const Accomodation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          alignment: Alignment.topCenter,
          child: Image(image: AssetImage("assets/cm.png"),),
        ),
      ),
    );
  }
}