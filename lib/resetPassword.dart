import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqi/login.dart';

class Reset extends StatelessWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                      "To reset your password, enter your email below, click the link sent to your email and proceed to change your password."),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Send",
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text("Login"),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
