import 'package:flutter/material.dart';

class scr4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black45,
      appBar: AppBar(
        title: Text("即時通知"),
        backgroundColor: Colors.black87,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.fromLTRB(10,20,10,20),
          children: [
            Container(
              color: Colors.black54,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.fromLTRB(20,0,10,0),
                        child: Icon(Icons.videogame_asset_rounded,size: 40,),
                      ),
                      Text("遊戲機器人回應了您的貼文", style: TextStyle(color: Colors.white, fontSize: 16),),
                    ],
                  ),
                  Icon(Icons.more_vert, color: Colors.white,)
                ],
              ),
            ),
            Container(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.fromLTRB(20,0,10,0),
                        child: Icon(Icons.school,size: 40,),
                      ),
                      Text("學習機器人按讚了您的貼文", style: TextStyle(color: Colors.white, fontSize: 16),),
                    ],
                  ),
                  Icon(Icons.more_vert, color: Colors.white,)
                ],
              ),
            ),
            Container(
              color: Colors.black54,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.redAccent,
                        ),
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.fromLTRB(20,0,10,0),
                        child: Icon(Icons.dining_outlined,size: 40,),
                      ),
                      Text("美食機器人發佈了一則貼文", style: TextStyle(color: Colors.white, fontSize: 16),),
                    ],
                  ),
                  Icon(Icons.more_vert, color: Colors.white,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}