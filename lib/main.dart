import 'dart:async';
import 'package:flutter/material.dart';
import 'scr1/scr1.dart';
import 'scr2/scr2.dart';
import 'scr3/scr3.dart';
import 'scr4.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  Welcome createState() => Welcome();
}

class Welcome extends State<MyApp> {
  int _timer = 5;

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if(_timer > 0) {
          _timer = _timer - 1;
        }
      });
    });
    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => myApp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("welcome.JPG"),fit: BoxFit.cover)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [
              SizedBox(
                width: 420,
                height: 550,
              ),
              Container(
                height: 60,
                width: 200,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(200, 0, 0, 0),
                ),
                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(150, 255, 255, 255),
                        ),
                        width: 60,
                        height: 60,
                        child: Center(
                          child: Text('$_timer', style: TextStyle(color: Colors.white, fontSize: 22),),
                        )
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("歡迎回來", style: TextStyle(color: Colors.white, fontSize: 18),)),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(primaryColor: Colors.pinkAccent),home: demo(),);
  }
}

class demo extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<demo> {
  final tabs=[
    Center(child: scr1()),
    Center(child: scr2()),
    Center(child: scr3()),
    Center(child: scr4()),
  ];

  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("phone_background.JPG"),fit: BoxFit.cover)
          ),
          child: Scaffold(
              floatingActionButton:FloatingActionButton(
                backgroundColor: Colors.black54,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 3,color: Colors.redAccent),
                    borderRadius: BorderRadius.circular(100)),
                onPressed: (){},
                child: Icon(Icons.add_box,size: 38,color: Colors.pinkAccent,),
              ),

              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              backgroundColor: Colors.transparent,
              body:tabs[_currentindex],
              bottomNavigationBar: BottomAppBar(
                color: Colors.black54,
                shape: CircularNotchedRectangle(),
                notchMargin: 10,
                child: BottomNavigationBar(

                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Colors.black54,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.white54,
                  selectedFontSize: 18.0,
                  unselectedFontSize: 14.0,
                  iconSize: 30.0,
                  currentIndex: _currentindex,
                  items: [
                    BottomNavigationBarItem(icon: Icon(Icons.home),
                      label: '首頁',
                    ),
                    BottomNavigationBarItem(icon: Icon(Icons.school),
                      label: '社團',
                    ),
                    BottomNavigationBarItem(icon: Icon(Icons.speaker_notes),
                      label: '聊天',
                    ),
                    BottomNavigationBarItem(icon: Icon(Icons.notifications_active_outlined),
                      label: '通知',
                    ),
                  ],
                  onTap: (index) { setState(() {
                    _currentindex=index;
                  });
                  },
                ),
              )
          ),
        ),
      )
    );
  }
}


