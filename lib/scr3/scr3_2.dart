import 'package:flutter/material.dart';

class scr3_2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(

        ),
        Container(
          color: Colors.black87,
          height: 60,
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.photo,color: Colors.white54,),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.file_copy,color: Colors.white54,),
                onPressed: (){},
              ),
              Container(
                color: Colors.white10,
                width: 200,
                child: TextField(

                ),
              ),
              IconButton(
                icon: Icon(Icons.send,color: Colors.white54,),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.mic,color: Colors.white54,),
                onPressed: (){},
              ),
            ],
          ),
        ),
      ],
    );
  }
}