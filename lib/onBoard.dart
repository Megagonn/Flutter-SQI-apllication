// import 'package:curved_splash_screen/curved_splash_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class OnBoard extends StatefulWidget {
//   const OnBoard({Key? key}) : super(key: key);

//   @override
//   _OnBoardState createState() => _OnBoardState();
// }

// class _OnBoardState extends State<OnBoard> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Container(
//           child: CurvedSplashScreen(
//               screensLength: splashList.length,
//               screenBuilder: (val) {
//                 return SplashContent(
//                     image: splashList[val]['image'],
//                     title: splashList[val]['title'],
//                     subtitle: splashList[val]['subtitle']);
//               },
//               onSkipButton: () {}),
//         ),
//       ),
//     );
//   }
// }

// List splashList = [
//   {
//     "title": "Start Learning",
//     "subtitle":
//         "Start learning now by using this app, Get your choosen course and start the journey.",
//     "image": "assets/learn.png",
//   },
//   {
//     "title": "Explore Courses",
//     "subtitle": "Choose which course is suitable for you to enroll in.",
//     "image": "assets/learning.png",
//   },
//   {
//     "title": "At Any time.",
//     "subtitle": "Your courses is available at any time you want. Join us now !",
//     "image": "assets/knowledge.png"
//   },
// ];

// class SplashContent extends StatelessWidget {
//   const SplashContent(
//       {Key? key,
//       required this.image,
//       required this.title,
//       required this.subtitle})
//       : super(key: key);
//   final String image;
//   final String title;
//   final String subtitle;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(),
//         body: Container(
//           child: Column(
//             children: [
//               Container(
//                 child: Image(
//                   image: AssetImage(image),
//                 ),
//               ),
//               Container(
//                 child: Text(title),
//               ),
//               Container(
//                 child: Text(subtitle),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
