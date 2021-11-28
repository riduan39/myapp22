import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class homepage2 extends StatefulWidget {
  const homepage2({Key? key}) : super(key: key);

  @override
  _homepage2State createState() => _homepage2State();
}

class _homepage2State extends State<homepage2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 250,
              width: 200,
              color: Colors.green,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5,
              ),
              child: Container(
                color: Colors.red.withOpacity(0.1),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
