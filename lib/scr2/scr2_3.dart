import 'package:flutter/material.dart';

class scr2_3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
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
                          Text('Food Bot', style: TextStyle(color: Colors.white, fontSize: 20),),
                        ],
                      ),
                      ElevatedButton(
                        child: Text("追蹤", style: TextStyle(color: Colors.white, fontSize: 16),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(Colors.teal),),
                        onPressed: (){},
                      ),
                    ],
                  ),
                  Container(
                    width: 400,
                    margin: EdgeInsets.all(20),
                    child: Text('歡迎來到美食討論區，我是美食機器人。\n...\n...', style: TextStyle(color: Colors.white, fontSize: 14),),
                  ),
                  Container(
                      height: 240,
                      width: 375,
                      color: Colors.redAccent,
                      child: Center( child: Text('歡迎來到美食討論區', style: TextStyle(color: Colors.white, fontSize: 26),),)
                  ),
                  Container(
                    height: 40,
                    color: Colors.black54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              padding: EdgeInsets.fromLTRB(0,0,10,0),
                              icon: Icon(Icons.remove_red_eye_sharp,color: Colors.white60,),
                              onPressed: (){},
                            ),
                            Text('5561',style: TextStyle(fontSize: 14,color: Colors.white54),),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              padding: EdgeInsets.fromLTRB(0,0,10,0),
                              icon: Icon(Icons.speaker_notes,color: Colors.white60,),
                              onPressed: (){},
                            ),
                            Text('210',style: TextStyle(fontSize: 14,color: Colors.white54),),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              padding: EdgeInsets.fromLTRB(0,0,10,0),
                              icon: Icon(Icons.thumb_up_alt_outlined,color: Colors.white60,),
                              onPressed: (){},
                            ),
                            Text('1054',style: TextStyle(fontSize: 14,color: Colors.white54),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 70, 70, 70),
                            ),
                            width: 50,
                            height: 50,
                            margin: EdgeInsets.fromLTRB(20,0,10,0),
                          ),
                          Text('. . .', style: TextStyle(color: Colors.white, fontSize: 20),)
                        ],
                      ),
                      ElevatedButton(
                        child: Text("追蹤", style: TextStyle(color: Colors.white, fontSize: 16),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(Colors.teal),),
                        onPressed: (){},
                      ),
                    ],
                  ) ,
                  Container(
                    width: 400,
                    margin: EdgeInsets.all(20),
                    child: Text('...\n...\n...', style: TextStyle(color: Colors.white, fontSize: 14),),
                  ),
                  Container(
                    height: 240,
                    width: 375,
                    color: Color.fromARGB(255, 70, 70, 70),
                  ),
                  Container(
                    height: 40,
                    color: Colors.black54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              padding: EdgeInsets.fromLTRB(0,0,10,0),
                              icon: Icon(Icons.remove_red_eye_sharp,color: Colors.white60,),
                              onPressed: (){},
                            ),
                            Text('...',style: TextStyle(fontSize: 14,color: Colors.white54),),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              padding: EdgeInsets.fromLTRB(0,0,10,0),
                              icon: Icon(Icons.speaker_notes,color: Colors.white60,),
                              onPressed: (){},
                            ),
                            Text('...',style: TextStyle(fontSize: 14,color: Colors.white54),),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              padding: EdgeInsets.fromLTRB(0,0,10,0),
                              icon: Icon(Icons.thumb_up_alt_outlined,color: Colors.white60,),
                              onPressed: (){},
                            ),
                            Text('...',style: TextStyle(fontSize: 14,color: Colors.white54),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}