import 'package:flutter/material.dart';

class HeaderOfPost extends StatelessWidget {
  HeaderOfPost({
    super.key,
    required this.image,
    required this.name,
  });
  String image;
  String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10,right: 0,
        ),
      child: Row(
        
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(image),
              ),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
           Text(
            name,
            style: TextStyle(fontSize: 20),
          ),
          const Spacer(),
          Transform.rotate(
              angle: 1.5707963267949,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_horiz_rounded)))
        ],
      ),
    );
  }
}
