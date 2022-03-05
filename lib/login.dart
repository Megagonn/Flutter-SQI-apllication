import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Container(
                height: 200,
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Image(
                  image: AssetImage("sqi.png"),
                ),
              ),
              Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(labelText: "Student ID")),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      decoration: InputDecoration(labelText: "Password")),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                        TextButton(
                          onPressed: () {},
                          child: Text("Reset Password"),
                        )
                      ])),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(154,57,100,0)
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.transparent)
                      ),
                      onPressed: () {},
                      child: Text("Login"),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
