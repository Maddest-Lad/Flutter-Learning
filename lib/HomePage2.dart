import 'package:flutter/material.dart';
import 'GradientAppBar.dart';
import 'Utils.dart';

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
              children: <Widget>[
                GradientAppBar("Team 852", Colors.lightBlue, Colors.lightBlue, false),
                spacingBar(Colors.blueAccent),
                displayImage("assets/852_Logo_Blue.png"),
                blankSpacer(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.account_circle, color: Colors.indigo, size: 55.0),

                    //Username Box
                    Container(alignment: Alignment.centerLeft, padding: EdgeInsets.only(left: 20), constraints: BoxConstraints.expand(width: 300, height: 50), decoration: BoxDecoration(color: Colors.lightBlue, borderRadius: BorderRadius.circular(45.0), border: Border.all(color: Colors.blueAccent[700], width: 5, style: BorderStyle.solid),),
                      child: spectralFont("Username:"),
                    )
                  ],
                )
              ],
            )
        )
    );
  }
}
