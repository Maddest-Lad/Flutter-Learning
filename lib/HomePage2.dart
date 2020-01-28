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

                // Separator Bar
                Container(
                  constraints:
                  BoxConstraints.expand(height: 5, width: double.infinity),
                  color: Colors.blueAccent,
                )

              ],
            )
        )
    );
  }
}
