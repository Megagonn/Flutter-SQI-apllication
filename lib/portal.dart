import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqi/color.dart';

class Portal extends StatelessWidget {
  const Portal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: deepBlue,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("sqi.png"),
                      ),
                      Text("SCICT"),
                    ],
                  ),
                ),
              ),
              Category(text: "General"),
              Route(icon: Icons.dashboard_sharp, text: "Dashboard"),

            ],
          ),
        ),
      ),
      appBar: AppBar(),
    );
  }
}

class Category extends StatelessWidget {
  const Category({Key? key,required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: TextStyle(color: lgrey),
      ),
    );
  }
}

class Route extends StatelessWidget {
  const Route({Key? key, required this.icon, required this.text})
      : super(key: key);
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [Icon(icon), Text(text)],
      ),
    );
  }
}
