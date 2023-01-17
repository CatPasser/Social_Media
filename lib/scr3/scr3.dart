import 'package:flutter/material.dart';
import 'scr3_1.dart';
import 'scr3_2.dart';

class scr3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black45,
      appBar: AppBar(
        title: Text("聊天室"),
        backgroundColor: Colors.black87,
      ),
      body: SafeArea(
          child: DefaultTabController(
              length: 2,
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
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.redAccent,
                          ),
                          width: 50,
                          height: 50,
                          child: Icon(Icons.dining_outlined,size: 40,),
                        ),),
                        Tab(child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.purpleAccent,
                          ),
                          width: 50,
                          height: 50,
                          child: Icon(Icons.sports_tennis,size: 40,),
                        ),),
                      ],
                    ),
                  ),
                  Container(
                    height: 430,
                    color: Colors.black54,
                    child: TabBarView(
                      children: [
                        scr3_1(),
                        scr3_2(),
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