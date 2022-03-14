import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqi/color.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:sqi/myProfile.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import 'portal.dart';
import 'utilities.dart';

int selectedIndex = 0;

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> views = [
      Home(),
      MyProfile(),
      TuitionPayment2(),
      Scaffold(
        bottomSheet: BottomSheet(
            onClosing: () {},
            builder: (context) => Column(children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Help"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Log out"),
                  ),
                ])),
      ),
    ];
    return Scaffold(
      bottomNavigationBar: WaterDropNavBar(
        bottomPadding: 10,
        barItems: [
          BarItem(filledIcon: Icons.home, outlinedIcon: Icons.home_outlined),
          BarItem(filledIcon: Icons.person, outlinedIcon: Icons.person_outline),
          BarItem(filledIcon: Icons.payment_outlined, outlinedIcon: Icons.payment_sharp),
          BarItem(
              filledIcon: Icons.settings_sharp,
              outlinedIcon: Icons.settings_outlined),
        ],
        selectedIndex: selectedIndex,
        onItemSelected: (val) {
          setState(() {
            selectedIndex = val;
            pager(val);
          });
        },
      ),
      drawer: MyDrawer(),
      appBar: AppBar(),
      body: PageView(
        controller: pageController,
        children: views,
      ),
    );
  }

  void pager(index,) {
    setState(
      () {
        selectedIndex = index;
        pageController.jumpToPage(index);
      },
    );
  }
}

// class Graphe extends StatelessWidget {
//   const Graphe({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: LineGraph(features: features, size: size),
//     );
//   }
// }

// class Feature extends StatelessWidget {
//   const Feature({ Key? key,required this.data,required this.title,required this.color }) : super(key: key);
//   final List<double> data;
//   final String title;
//   final Color color;
//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }

// List<Feature> features = [
//   Feature(
//     title: "Drink Water",
//     color: Colors.blue,
//     data: [0.2, 0.8, 1, 0.7, 0.6],
//   ),
//   Feature(
//     title: "Exercise",
//     color: Colors.pink,
//     data: [1, 0.8, 6, 0.7, 0.3, 8],
//   ),
// ];

// var list = [
//   {'wtd': "i want to eat", "time": "9 am"},
//   {"wtd": "i want to code", "time": "9 am"},
//   {"wtd": "i want to read", "time": "10 am"},
//   {"wtd": "i want to dance", "time": "9 pm"},
// ];
// var inp;
// var correctIndex;
// void a() {
//   for (var i = 0; i < list.length; i++) {
//     if (list[i]['wtd'] == inp) {
//       correctIndex = i;
//     }
//   }
//   print(list[2]);
//   list.removeAt(correctIndex);
//   list.insert(correctIndex, {"wtd":"i want to sleep", "time":"11pm"});
// }
