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
                blankSpacer(20),

                // Username Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.account_circle, color: Colors.indigo, size: 55.0),

                    Container(alignment: Alignment.centerLeft, padding: EdgeInsets.only(left: 20), constraints: BoxConstraints.expand(width: 300, height: 50), decoration: BoxDecoration(color: Colors.lightBlue.withOpacity(0.75), borderRadius: BorderRadius.circular(45.0), border: Border.all(color: Colors.blueAccent[700], width: 5, style: BorderStyle.solid),),
                      child: spectralFont("Username:")),
                ]),

                blankSpacer(20),

                // Password Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.lock_outline, color: Colors.indigo, size: 55.0),

                    Container(alignment: Alignment.centerLeft, padding: EdgeInsets.only(left: 20), constraints: BoxConstraints.expand(width: 300, height: 50), decoration: BoxDecoration(color: Colors.lightBlue.withOpacity(0.75), borderRadius: BorderRadius.circular(45.0), border: Border.all(color: Colors.blueAccent[700], width: 5, style: BorderStyle.solid),),
                      child: spectralFont("Password:")),
                  ],
                ),

                blankSpacer(20),

                // Sign Up & Log In
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                  Container(alignment: Alignment.centerLeft, constraints: BoxConstraints.expand(width: MediaQuery.of(context).size.width/2 - 60, height: 25), decoration: BoxDecoration(color: Colors.lightBlue, borderRadius: BorderRadius.circular(5.0)),
                      child: Center(child: spectralFont("Log In"))),

                  Container(alignment: Alignment.centerLeft, constraints: BoxConstraints.expand(width: MediaQuery.of(context).size.width/2 - 60, height: 25), decoration: BoxDecoration(color: Colors.lightBlue, borderRadius: BorderRadius.circular(5.0)),
                      child: Center(child: spectralFont("Sign Up"))),
                  ]
                )
              ],
            )
        )
    );
  }
}
