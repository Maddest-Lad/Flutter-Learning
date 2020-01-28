import 'package:flutter/material.dart';
import 'GradientAppBar.dart';
import 'Utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            //Background Container
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

                // List of Widgets In Use
                children: <Widget>[

                  // Appbar At The Top
                  GradientAppBar("Team App", HexColor('150F6D'), HexColor('393D97'), false),

                  // Separator Bar
                  Container(
                    constraints:
                    BoxConstraints.expand(height: 5, width: double.infinity),
                    color: HexColor('FF1F22'),
                  ),

                  // Logo Display
                  Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    constraints: BoxConstraints.expand(height: 300),
                    alignment: Alignment.center,
                    child: Image.asset("assets/852_Logo.png", fit: BoxFit.cover),
                  ),

                  // Login Box
                  Container(
                    constraints: BoxConstraints.expand(
                        width: MediaQuery.of(context).size.width/2,
                        height: 80),
                    decoration: BoxDecoration(
                      color: HexColor('E18D2E'),
                      border: Border.all(
                          color: HexColor('2a2e6f'),
                          width: 5,
                          style: BorderStyle.solid
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    // Login Button Text
                    child: Center (
                      child: Text("Login",
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Spectral',
                            fontWeight: FontWeight.bold,
                            fontSize: 36.0
                          )
                      ),
                    ),
                  ),

                  // Forgot Password Button
                  Text("Forgot Your Password",
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Spectral',
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0
                    )
                  ),
                ],
              ),
            )
        )
    );
  }
}
