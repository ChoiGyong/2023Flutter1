import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  //메뉴
  Widget _buildTop() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                print('클릭');
              },
              child: Column(
                children: [
                  Icon(
                    Icons.person,
                    size: 40,
                  ),
                  Text('엄마'),
                ],
              ),
            ),
            Column(
              children: [
                Icon(
                  Icons.person,
                  size: 40,
                ),
                Text('아빠'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.person,
                  size: 40,
                ),
                Text('할아버지'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.person,
                  size: 40,
                ),
                Text('할머니'),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                  Icons.person,
                  size: 40,
                ),
                Text('삼촌'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.person,
                  size: 40,
                ),
                Text('이모'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.person,
                  size: 40,
                ),
                Text('아들'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.person,
                  size: 40,
                ),
                Text('딸'),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMiddle() {
    final imageItems = [
      'assets/baby.jpg',
      'assets/child.jpg',
      'assets/family.jpg',
      'assets/family art.jpg',
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

  Widget _buildBottom() {
    final items = List.generate(
        10, (i) {
      return ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('공지사항입니다.'),
      );
    });
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}