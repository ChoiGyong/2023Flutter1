import 'package:homework/Page1.dart';
import 'package:homework/Page2.dart';
import 'package:homework/StopWatchPage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0;
  var _pages = [
    Page1(),
    Page2(),
    StopWatchPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Family Album',
          style: TextStyle(
              fontSize: 40,
              color: Colors.yellow
          ),
        ),
        backgroundColor: Colors.pink[500],
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink[500],
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '나만의 갤러리',
            icon: Icon(Icons.account_circle),
          ),
          BottomNavigationBarItem(
            label: '스톱워치',
            icon: Icon(Icons.access_alarm),
          ),
        ],
      ),
    );
  }
}
