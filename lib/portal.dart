import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqi/color.dart';
import 'package:sqi/election.dart';
import 'package:sqi/help.dart';
import 'package:sqi/resetPassword.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';
import 'dashboard.dart';
import 'myProfile.dart';

class Portal extends StatelessWidget {
  const Portal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: deepBlue,
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 4,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("sqi.png"),
                        ),
                        Text(
                          "SCICT",
                          style: TextStyle(color: white),
                        ),
                      ],
                    ),
                  ),
                ),
                Category(text: "General"),
                Route(icon: Icons.dashboard_sharp, text: "Dashboard", route: Dashboard(),),
                Category(text: "Profile"),
                Route(icon: Icons.person_sharp, text: "My Profile", route: MyProfile(),),
                Route(icon: Icons.lock_outline_sharp, text: "Change Password", route: Reset(),),
                Route(icon: Icons.folder_sharp, text: "Documents", route: Dashboard(),),
                Category(text: "Academics"),
                Route(icon: Icons.notifications_none_rounded, text: "Course Registration", route: Dashboard(),),
                Route(icon: Icons.folder_open_sharp, text: "Resources", route: Dashboard(),),
                Route(icon: Icons.app_registration_sharp, text: "Registration History", route: Dashboard(),),
                Route(icon: Icons.checklist_rtl_sharp, text: "Semester Result", route: Dashboard(),),
                Route(icon: Icons.table_chart_sharp, text: "View Timetable", route: Dashboard(),),
                Category(text: "Payments"),
                Route(icon: Icons.payment_rounded, text: "Pay Tuition", route: Dashboard(),),
                Route(icon: Icons.payments_sharp, text: "Other Payments", route: Dashboard(),),
                Route(icon: Icons.history_sharp, text: "Payments History", route: Dashboard(),),
                Category(text: "Others"),
                Route(icon: Icons.home_sharp, text: "Accomodation", route: Dashboard(),),
                Route(icon: Icons.check_sharp, text: "Election", route: Election(),),
                Route(icon: Icons.help_outline_sharp, text: "Help", route: Help(),),
                Route(icon: Icons.logout_sharp, text: "Logout", route: Dashboard(),),
              ],
            ),
          ),
        ),
      );
  }
}

class Category extends StatelessWidget {
  const Category({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(color: lgrey),
          ),
        ],
      ),
    );
  }
}

class Route extends StatelessWidget {
  const Route(
      {Key? key, required this.icon, required this.text, required this.route})
      : super(key: key);
  final IconData icon;
  final String text;
  final Widget route;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => route),
          );
        },
        child: Row(
          children: [
            Icon(
              icon,
              color: white,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                text,
                style: TextStyle(color: white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
