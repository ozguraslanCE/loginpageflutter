import 'package:flutter/material.dart';
import "package:hovering/hovering.dart";
import 'package:hexcolor/hexcolor.dart';
import 'package:delayed_display/delayed_display.dart';
import 'arrow.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp2(),
    );
  }
}

class MyApp2 extends StatefulWidget {
  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  var embedImages = Row(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      DelayedDisplay(
        delay: Duration(milliseconds: 500),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: HoverContainer(
            child: Image.asset(
              'images/walk-walk.png',
              width: 150,
              height: 150,
            ),
            hoverColor: HexColor("#ffff4444"),
          ),
        ),
      ),
      Arrow(1000),
      Arrow(1500),
      Arrow(2000),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor('#162148'),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: 150.0,
                child: embedImages,
                margin: EdgeInsets.only(
                  left: 100.0,
                ),
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 2500),
                child: Container(
                  margin: EdgeInsets.only(
                    left: 1000.0,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: HoverContainer(
                      hoverColor: HexColor("#ffff4444"),
                      child: MyCustomForm(),
                    ),
                  ),
                ),
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 3000),
                child: Container(
                  height: 200.0,
                  margin: EdgeInsets.only(
                    left: 200.0,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: HoverContainer(
                      hoverColor: HexColor("#ffff4444"),
                      child: Image.asset(
                        'images/success.png',
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            // Add TextFormFields and ElevatedButton here.
            Container(
              child: Image.asset('images/user.png'),
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 350.0,
              height: 45.0,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.black38,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'User Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 350.0,
              height: 45.0,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black38,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 350.0,
              height: 45.0,
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: HoverContainer(
                    hoverColor: Colors.black,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.white, width: 1.5),
                        ),
                      ),
                      child: Text(
                        'Login',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
