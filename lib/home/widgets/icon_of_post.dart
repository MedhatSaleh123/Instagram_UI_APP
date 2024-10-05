import 'package:flutter/material.dart';

class IconOfPost extends StatefulWidget {
  IconOfPost({
    super.key,
  });

  @override
  State<IconOfPost> createState() => _IconOfPostState();
}

class _IconOfPostState extends State<IconOfPost> {
  bool item = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              size: 30,
              Icons.favorite_outline,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(size: 30, Icons.sms),
          ),
          Transform.rotate(
            angle: -0.785,
            child: IconButton(
              onPressed: () {},
              icon: Icon(size: 30, Icons.send_rounded),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(size: 30, Icons.bookmark_border),
          ),
        ],
      ),
    );
  }
}
