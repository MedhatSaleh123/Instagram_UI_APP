import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/Profile/profile_page.dart';
import 'package:instagram_app/home/parts_of_page/home_page.dart';
import 'package:instagram_app/reals/reals.dart';
import 'package:instagram_app/search/search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> widgets = [
    HomePage(),
    Search(),
    RealsPage(),
    ProfilePage(),
  ];
  int item = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[item],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        showSelectedLabels: true,
          currentIndex: item,
          onTap: (index) {
            setState(() {
              item = index;
            });
          },
          selectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(color: Colors.blue),
          selectedLabelStyle: TextStyle(
            color: Colors.white),
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  color: Colors.white, 
                  Icons.home_filled,size: 30,),
                   label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(color: Colors.white,
                 Icons.search,size: 30,), label: 'Search'),
            BottomNavigationBarItem(
              label: 'Reals',
              icon: Icon(color: Colors.white, 
              Icons.video_library_sharp,size: 30,),
            ),
            BottomNavigationBarItem(
              icon: Icon(color: Colors.white, Icons.person,size: 30,),
              label: 'Profile',
            ),
          ]),
    );
  }
}
