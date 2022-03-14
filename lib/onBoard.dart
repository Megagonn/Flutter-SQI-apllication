import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqi/color.dart';
import 'package:sqi/login.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  _OnboardState createState() => _OnboardState();
}

List<OnboardData> list = onBoardList;

var _currentPage = 0;
var index = 0;

class _OnboardState extends State<Onboard> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 200,
              child: PageView.builder(
                  onPageChanged: (val) {
                    setState(() {
                      _currentPage = val;
                    });
                  },
                  controller: _controller,
                  itemCount: list.length,
                  itemBuilder: (context, int ind) {
                    index = ind;
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 40,
                          ),
                          child: AspectRatio(
                            aspectRatio: 18 / 9,
                            child: Image(
                              image: AssetImage(list[ind].image),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 8,
                          ),
                          child: Text(
                            list[ind].title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(list[ind].subTitle),
                      ],
                    );
                  }),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                          List.generate(list.length, (ind) => _buildV(ind))),
                ),
                MaterialButton(
                  onPressed: () {
                    index + 1 == list.length
                        ? Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()))
                        : _controller.nextPage(
                            duration: Duration(microseconds: 400),
                            curve: Curves.bounceInOut);
                  },
                  child: Text(
                    index + 1 == list.length ? "Start Your Journey" : "Next",
                    style: TextStyle(color: white),
                  ),
                  shape: BeveledRectangleBorder(),
                  color: deepBlue,
                  splashColor: Colors.white54,
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.push(context,
                    // MaterialPageRoute(builder: (context) => Home()));
                    _controller.jumpToPage(list.length - 1);
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(color: deepBlue, fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class OnboardData {
  final String image;
  final String title;
  final String subTitle;

  OnboardData(
      {required this.image, required this.title, required this.subTitle});
}

List<OnboardData> onBoardList = [
  OnboardData(
      image: "sqi.png", title: "Welcome", subTitle: "One mind at a time..."),
  OnboardData(
      image: "knowledge.png",
      title: "Knowledge",
      subTitle: "Knowledge is life"),
  OnboardData(
      image: "flutter.png",
      title: "Mobile Application",
      subTitle: "Learn Flutter to develop a cross platform application"),
  OnboardData(
      image: "react.png",
      title: "FrontEnd Development",
      subTitle:
          "Learn React to develop a responsive front end web application"),
  OnboardData(
      image: "laravel.png",
      title: "BackEnd dev.",
      subTitle: "Learn PHP and it's frame work"),
  OnboardData(
      image: "robotics.png", title: "Robotics", subTitle: "Robotics is here"),
  OnboardData(image: "programming.png", title: "", subTitle: "And more..."),
];

AnimatedContainer _buildV(index) {
  return AnimatedContainer(
    decoration: BoxDecoration(
      color: _currentPage == index ? deepBlue : Colors.blue.shade200,
      borderRadius: BorderRadius.circular(100),
    ),
    margin: EdgeInsets.only(right: 10),
    curve: Curves.easeInOut,
    duration: Duration(milliseconds: 500),
    width: _currentPage == index ? 20 : 10,
    height: _currentPage == index ? 20 : 10,
  );
}
