import 'package:flutter/material.dart';
import 'GradientAppBar.dart';
import 'Utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors: [
              Colors.indigo.shade800,
              HexColor('393D97'),
              Colors.indigo.shade400,
              Colors.indigo.shade800
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.15, 0.3, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: new Column(
        children: <Widget>[
          GradientAppBar("Team 852 App"),
          Container(
            constraints:
                BoxConstraints.expand(height: 5, width: double.infinity),
            color: HexColor('FF1F22'),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            constraints: BoxConstraints.expand(height: 300),
            alignment: Alignment.center,
            child: Image.asset("assets/852_Logo.png", fit: BoxFit.cover),
          ),
        ],
      ),
    ));
  }
}
