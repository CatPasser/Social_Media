import 'package:flutter/material.dart';

import 'scr1_1.dart';
import 'scr1_2.dart';

class scr1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.transparent,
        body:SafeArea(
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                Container(
                  child: TabBar(
                    labelColor: Colors.white,
                    padding: EdgeInsets.fromLTRB(0, 0, 240, 0),
                    indicator: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    indicatorPadding: EdgeInsets.fromLTRB(24, 42, 24, 0),
                    unselectedLabelStyle: TextStyle(
                        fontSize: 18
                    ),
                    labelStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,),
                    tabs: [
                      Tab(text: "追蹤",),
                      Tab(text: "社交",),
                    ],
                  ),),
                Container(
                  child: Expanded(
                    child: TabBarView(
                      children: [
                        scr1_1(),
                        scr1_2(),
                      ],
                    ),
                  ),),
              ],
            ),
          ),
        )
    );
  }
}