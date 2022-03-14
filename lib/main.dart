import 'package:flutter/material.dart';
import 'package:sqi/login.dart';
import 'package:sqi/onBoard.dart';
import 'package:sqi/resetPassword.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboard(),
      // OnBoard(),
      // Reset(),
      // Login(),
    );
  }
}