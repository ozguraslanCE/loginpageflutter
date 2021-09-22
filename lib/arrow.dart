import 'package:flutter/material.dart';
import "package:hovering/hovering.dart";
import 'package:hexcolor/hexcolor.dart';
import 'package:delayed_display/delayed_display.dart';

class Arrow extends StatefulWidget {
  int millisecond = 0;
  @override
  Arrow([int parameter]) {
    millisecond = parameter;
  }
  _ArrowState createState() => _ArrowState(millisecond);
}

class _ArrowState extends State<Arrow> {
  int millisecond = 0;
  @override
  _ArrowState([int parameter]) {
    millisecond = parameter;
  }

  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: Duration(milliseconds: millisecond),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: HoverContainer(
          child: Image.asset(
            'images/arrow.png',
            width: 100,
            height: 100,
          ),
          hoverColor: HexColor("#ffff4444"),
          hoverHeight: 150,
          hoverWidth: 150,
        ),
      ),
    );
  }
}
