import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqi/color.dart';
import 'package:sqi/portal.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: white,
              boxShadow: [
                BoxShadow(color: lgrey, blurRadius: 1, spreadRadius: 1),
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text("SEND CRASH REPORT"),
                ),
                Text(
                    "Perhaps, you could not find a solution to a problem you encountered from the FAQ section, Send a crash report to the technical team and a response will be sent to you soon. A crash report can be sent bt filling the form below. To properly and effectively describe the situation, you can include a screenshot. Maximum size is 100kb."),
                Container(
                  margin: EdgeInsets.only(top: 6),
                  alignment: Alignment.topLeft,
                  child: Text("Subject:"),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: lgrey,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text("Crash Report:"),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 10),
                  child: TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: lgrey,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 5),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Upload Images'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(lgrey),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 8),
                  child: ElevatedButton(
                    onPressed: () {
                      alert(context);
                    },
                    child: Text('Send'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(deepBlue),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        
      ),
    );
  }

  alert(context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: deepBlue,
        content: Text("Report sent successfully"),
        // duration: Duration(minutes: 1),
        action: SnackBarAction(
            label: 'close',
            onPressed: () {
              // ignore: unnecessary_statements
              SnackBarClosedReason.remove;
            }),
      ),
    );
  }
  
}
