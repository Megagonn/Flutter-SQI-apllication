import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqi/color.dart';
import 'package:sqi/portal.dart';

class TimeTable extends StatelessWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: MyDrawer(),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: white,
              boxShadow: [BoxShadow(color: lgrey, blurRadius: .5, spreadRadius: 1)]
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text('TIMETABLE'),
                ),
                Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border: TableBorder(
                    verticalInside: BorderSide(width: 2, color: deepBlue),
                    horizontalInside: BorderSide(width: 2, color: deepBlue),
                    bottom: BorderSide(width: 2, color: deepBlue),
                    top: BorderSide(width: 2, color: deepBlue),
                    right: BorderSide(width: 2, color: deepBlue),
                    left: BorderSide(width: 2, color: deepBlue),
                  ),
                  children: [
                    TableRow(decoration: BoxDecoration(color: lgrey), children: [
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Text(""),
                        ),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "MON",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "TUE",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "WED",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "THUR",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "FRI",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "8 AM",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("CSE 201")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("EED 101")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("RBT 222")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("PYT 133")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("JAV 112")),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "9 AM",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("SEC 301")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("WTD 231")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("MEC 322")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("JSC 212")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("SQL 102")),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "10 AM",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("SQL 102")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("DSA 233")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("MUL 222")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("PTG 211")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("FLT 401")),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "11 AM",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("SWF 322")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("DSC 222")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("MOF 231")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("TAD 321")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("ACE 211")),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "12 PM",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("AED 211")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("JAV 222")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("DRT 332")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("JDC 231")),
                      ),
                      TableCell(
                        child: Container(
                            padding: EdgeInsets.all(8), child: Text("ANA 405")),
                      ),
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
