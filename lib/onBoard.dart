import 'package:curved_splash_screen/curved_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CurvedSplashScreen(screensLength: splashList.length, screenBuilder: (val){
        return 
      }, onSkipButton: (){}),
    );
  }
}



List<SplashContent> splashList = [
  SplashContent(image: '', title: 'title', subtitle: 'subtitle')
];



class SplashContent extends StatelessWidget {
  const SplashContent({ Key? key , required this.image, required this.title, required this.subtitle}) : super(key: key);
  final String image;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              Container(
                child: Image(image: AssetImage(image),),
              ),
              Container(
                child: Text(title),
              ),
              Container(
                child: Text(subtitle),
              )
            ],
          ),
        ),
      ),
    );
  }
}

