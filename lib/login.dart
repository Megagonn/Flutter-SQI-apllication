import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqi/color.dart';
import 'package:sqi/dashboard.dart';
import 'package:sqi/portal.dart';
import 'package:sqi/resetPassword.dart';

var pass = true;
bool showPass() {
  return pass = !pass;
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey formKey = GlobalKey<FormState>();

  final _formKey = GlobalKey<FormState>();

  bool submit() {
    return _formKey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(40),
          child: ListView(
            children: [
              Container(
                height: 200,
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Image(
                  image: AssetImage("assets/sqi.png"),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Form(
                      key: _formKey,
                      child: TextFormField(
                          validator: (val) {
                            return val.toString().length < 6
                                ? "ID must be 6 character"
                                : null;
                          },
                          keyboardAppearance: Brightness.dark,
                          keyboardType: TextInputType.numberWithOptions(),
                          decoration: InputDecoration(labelText: "Student ID")),
                    ),
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
                        borderRadius: BorderRadius.circular(50),
                        color: deepBlue,
                      ),
                      child: TextButton(
                        onPressed: () {
                          submit()
                              ? Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Dashboard(),
                                  ),
                                )
                              : (){};
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
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
          suffix: IconButton(
            icon: Icon(
              Icons.remove_red_eye_sharp,
            ),
            onPressed: () {
              setState(() {
                showPass();
              });
            },
          ),
          labelText: "Password",
        ),
      ),
    );
  }
}
