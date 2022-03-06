import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqi/color.dart';
import 'package:sqi/portal.dart';
import 'package:sqi/resetPassword.dart';

var pass = true;
bool showPass() {
  return pass = false;
}

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
                  PassInp(),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Reset(),
                              ),
                            );
                          },
                          child: Text("Reset Password"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      // border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(50),
                      color: deepBlue,
                    ),
                    child: TextButton(
                      // style: ButtonStyle(
                      // padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 10)),
                      // elevation: MaterialStateProperty.all(2),
                      // backgroundColor:
                      //     MaterialStateProperty.all(Colors.transparent),
                      // ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Portal(),
                          ),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
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

class PassInp extends StatefulWidget {
  const PassInp({Key? key}) : super(key: key);

  @override
  _PassInpState createState() => _PassInpState();
}

class _PassInpState extends State<PassInp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        obscureText: pass,
        decoration: InputDecoration(
          // suffix: IconButton(
          //   icon: Icon(
          //     Icons.remove_red_eye_sharp,
          //   ),
          //   onPressed: () {
          //     setState(() {
          //       showPass();
                
          //     });
          //   },
          // ),
          labelText: "Password",
        ),
      ),
    );
  }
}
// pass = true;