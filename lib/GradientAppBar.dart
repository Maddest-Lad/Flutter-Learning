import 'package:flutter/material.dart';
import 'Utils.dart';

class GradientAppBar extends StatelessWidget {
  final bool parameter;
  final Color a;
  final Color b;
  final String title;
  final double barHeight = 66.0;

  GradientAppBar(this.title, this.a, this.b, this.parameter);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return new Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [this.a, this.b],
            begin: parameter ? Alignment.topCenter : Alignment.centerLeft,
            end: parameter ? Alignment.bottomCenter : Alignment.centerRight,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp)
      ),

      child: Center (
        child: Text(title,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Spectral',
                fontWeight: FontWeight.bold,
                fontSize: 36.0)
        ),
      ),
    );
  }
}
