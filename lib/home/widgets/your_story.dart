import 'package:flutter/material.dart';

class YourStory extends StatelessWidget {
   YourStory({
    super.key,
  });
  List<Color> storyBorderColor = [Color(0xFF9B2282), Color(0xFFEEA863)];

List images = [
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
List names =['Freed','Gri','Jhon','Henry',
'William','Mateo','Dustu','Pierpont','Gri','Jhon'
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return index == 0
                ? Padding(
                    padding: 
                    const EdgeInsets.only(
                      left: 8,top: 8),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 33,
                              backgroundImage: AssetImage(
                                'assets/images/cr7.jpg',
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child:Container(height: 20, width: 20,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white,width:1.5),
                                shape: BoxShape.circle,color: Colors.blue)
                              
                              , child: Center(child: Text("+",style: TextStyle(color: Colors.white),),),)
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Your Story",
                        style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  )
                : Padding(
                    padding:
                     const EdgeInsets.only(
                      right: 10, 
                      left:10,
                       top: 8),
                    child: InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                             Container(
            height: 67,
            width: 67,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: storyBorderColor,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(images[index]), fit: BoxFit.cover)),
              ),
            ),),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(names[index]),
                        ],
                      ),
                    ),
                  );
          }),
    );
  }
}
