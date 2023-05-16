import 'dart:math';

import 'package:flutter/material.dart';
class dies extends StatefulWidget {
  const dies({Key? key}) : super(key: key);

  @override
  State<dies> createState() => _diesState();
}
class _diesState extends State<dies> {
  @override
  int leftdicenumber=2;
  int rightdicenumber=1;
  void ChangeDicenumber(){
    setState(() {
      leftdicenumber=Random().nextInt(6)+1;
      rightdicenumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.red,
      appBar: AppBar(
        title: Center(child: Text('Dies App')),
      ),
         body: Center(
           child: Row(

                children: [
                  Expanded(
                    flex: 1,
                    child: TextButton(
                      onPressed:ChangeDicenumber,
                      child: Image.asset("images/dice$leftdicenumber.jpg")
                    )
                  ),

                  Expanded(
                    flex: 1,
                      child: TextButton(
                          onPressed: ChangeDicenumber,
                          child: Image.asset("images/dice$rightdicenumber.jpg")
                      )
                  ),
                ],
           ),
         ),
    );
  }
}

