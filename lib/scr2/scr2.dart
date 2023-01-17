import 'package:flutter/material.dart';
import 'scr2_1.dart';
import 'scr2_2.dart';
import 'scr2_3.dart';
import 'scr2_4.dart';
import 'scr2_5.dart';




class scr2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black45,
      body: SafeArea(
        child: DefaultTabController(
            length: 5,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  height: 80,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 5,),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.black54.withOpacity(0.5)),],
                  ),
                  child: TabBar(
                    isScrollable: true,
                    indicator: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    indicatorPadding: EdgeInsets.fromLTRB(24, 62, 24, 0),
                    tabs: [
                      Tab(child: Container(
                        height: 52,
                        width: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.green,),
                        child: Center(child: Icon(Icons.videogame_asset_rounded,size: 45,color: Colors.white,),)
                      ),),
                      Tab(child: Container(
                        height: 52,
                        width: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.blue,),
                        child: Center(child: Icon(Icons.school,size: 45,color: Colors.white,),)
                      ),),
                      Tab(child: Container(
                        height:52,
                        width: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.red,),
                        child: Center(child: Icon(Icons.dining_outlined,size: 45,color: Colors.white,),)
                      ),),
                      Tab(child: Container(
                        height:52,
                        width: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.yellow,),
                        child: Center(child: Icon(Icons.airplanemode_active,size: 45,color: Colors.white,),)
                      ),),
                      Tab(child: Container(
                        height: 52,
                        width: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.purpleAccent,),
                        child: Center(child: Icon(Icons.sports_tennis,size: 45,color: Colors.white,),)
                      ),),
                    ],
                  ),
                ),
                Container(
                  height: 524,
                  color: Colors.black54,
                  child: TabBarView(
                    children: [
                      scr2_1(),
                      scr2_2(),
                      scr2_3(),
                      scr2_4(),
                      scr2_5(),
                    ],
                  ),
                ),
              ],
            )
        )
      ),
    );
  }
}