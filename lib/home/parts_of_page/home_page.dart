import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:instagram_app/home/widgets/header_of_post.dart';
import 'package:instagram_app/home/widgets/icon_of_post.dart';
import 'package:instagram_app/home/widgets/image_of_post.dart';
import 'package:instagram_app/home/widgets/your_story.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool item = false;
  List image = [
  'https://images2.alphacoders.com/109/thumb-1920-1093534.jpg',
  'https://ashfordbmeassociation.org/wp-content/uploads/2020/05/portrait-handsome-smiling-stylish-young-man-model-dressed-red-checkered-shirt-fashion-man-posing_158538-4914.jpg',
  'https://c1.wallpaperflare.com/preview/193/915/678/fashion-style-boys-fashion-pose-young-boy.jpg',
  'https://img.freepik.com/premium-photo/young-man-hd-8k-wallpaper-stock-photographic-image_853645-59446.jpg',
  
  'https://img.freepik.com/premium-photo/young-man-hd-8k-wallpaper-stock-photographic-image_890746-50192.jpg',
 'https://wallpapersmug.com/download/1920x1080/44e03d/celebrity-lionel-messi.jpg',
 'https://c1.wallpaperflare.com/preview/193/915/678/fashion-style-boys-fashion-pose-young-boy.jpg',
  'https://img.freepik.com/premium-photo/young-man-hd-8k-wallpaper-stock-photographic-image_853645-59446.jpg',
  
  'https://img.freepik.com/premium-photo/young-man-hd-8k-wallpaper-stock-photographic-image_890746-50192.jpg',
 'https://wallpapersmug.com/download/1920x1080/44e03d/celebrity-lionel-messi.jpg',
];
List name =['Freed Gri','Gri Freed','Jhon Herney',
'Henry William',
'William Freed','Mateo Dustu','Dustu Gri','Pierpont William','Gri','Jhon'
];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff000000),
        appBar: AppBar(
          backgroundColor: const Color(0xff000000),
          title: const Text(
            "Instagram",
            style: TextStyle(fontSize: 35, fontFamily: 'Billabong'),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_box_outlined,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
                size: 30,
              ),
            ),
            Transform.rotate(
              angle: -0.785,
              child: IconButton(
                onPressed: () {},
                icon: Icon(size: 30, Icons.send_rounded),
              ),
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  index == 0 ? YourStory() : SizedBox(),
                  const Divider(
                    thickness: 0.2,
                    color: Color.fromARGB(255, 78, 74, 74),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  HeaderOfPost(
                  name:  name[index],
                    image:image[index]),
                  SizedBox(
                    height: 10,
                  ),
                  ImageOfPost(image: image[index],),
                  IconOfPost(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("9,754 likes"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      "Medhat Saleh is a flutter developer from fayoum , live in egypt if you want to make your app call him and he will do it for you man ",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "View all 10 Comments",
                      style: TextStyle(color: Color(0xff5B5B5B)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "1 day ago",
                      style: TextStyle(color: Color(0xff5B5B5B)),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
