import 'package:flutter/material.dart';
import 'package:instagram_app/Profile/profile_page.dart';
import 'package:instagram_app/home.dart';
import 'package:instagram_app/home/parts_of_page/home_page.dart';
import 'package:instagram_app/reals/reals.dart';
import 'package:instagram_app/search/search.dart';

void main() {
  runApp(Instagram());
}

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          brightness: Brightness.dark),
      home: Home(),
    );
  }
}
