import 'package:flutter/material.dart';

class ImageOfPost extends StatelessWidget {
   ImageOfPost({
    super.key,
    required this.image,
  });
String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      width: double.infinity,
      child: Image(
        fit: BoxFit.cover,
        image:NetworkImage(image),
      ),
    );
  }
}
