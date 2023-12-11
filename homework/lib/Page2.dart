import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildMiddle(),
      ],
    );
  }

  Widget _buildMiddle() {
    final imageItems = [
      'assets/baby1.jpg',
      'assets/baby2.jpg',
      'assets/baby3.jpg',
    ];
    return CarouselSlider(
      options: CarouselOptions(
          height: 500.0
      ),
      items: imageItems.map((path) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRect(
                child: Image.asset(
                  path,
                ),
              ),
            );
          },
        );
      }
      ).toList(),
    );
  }
}
