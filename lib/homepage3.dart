import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class homepage3 extends StatefulWidget {
  const homepage3({Key? key}) : super(key: key);

  @override
  _homepage3State createState() => _homepage3State();
}

class _homepage3State extends State<homepage3> {
  var kkkkk = ["assets/pp.JPG", "assets/riduan.jpg", "assets/rid.jpg"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(),
            body: Center(
      child: Column(
        children: [
          SizedBox(height: 16),
          Container(
            height: 300,
            child: CarouselSlider(
              options: CarouselOptions(
                height: 400.0,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: kkkkk.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.amber),
                      child: Image.asset(i),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    )));
  }
}
