import 'package:flutter/cupertino.dart';

class Election extends StatelessWidget {
  const Election({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.topCenter,
        child: Text('NO ELECTION AVAILABLE', style: TextStyle(fontWeight: FontWeight.w600),),
      ),
    );
  }
}