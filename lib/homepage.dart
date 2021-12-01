import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            tooltip: "This is floatingAcion button",
            onPressed: () {
          setState(() {
            _value = !_value;
          });
        }),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Tooltip(
                  message: "ToolTip Container",
                  child: AnimatedContainer(
                      height: _value == false ? 150 : 300,
                      width: _value == false ? 150 : 200,
                      color: Colors.teal,
                      duration: Duration(seconds: 5)),
                ),
                SizedBox(height: 20),
                Transform.rotate(
                  angle: pi/4.5,
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 20),
                Transform.translate(
                  offset: Offset(20, 10),
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.red,
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
