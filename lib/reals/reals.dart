import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RealsPage extends StatefulWidget {
  const RealsPage({super.key});

  @override
  State<RealsPage> createState() => _RealsPageState();
}

class _RealsPageState extends State<RealsPage> {
 
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
List name =['Freed Gri','Gri Freed','Jhon Herney',
'Henry William',
'William Freed','Mateo Dustu','Dustu Gri','Pierpont William','Gri','Messi'
];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index) {
              return DefaultTextStyle(
                style: TextStyle(color: Colors.white),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(images[index]),
                      ),
                    ),
                    const Positioned(
                      top: 20,
                      left: 25,
                      child: Text(
                        "Reals",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 25,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 60,
                      child: Column(
                        children: [
                          IconButton(
                            icon: Icon(size: 35, Icons.favorite_border_sharp),
                            onPressed: () {},
                          ),
                          Text('1,558'),
                          SizedBox(
                            height: 5,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                  size: 35, Icons.messenger_outline_rounded)),
                          Text("250"),
                          SizedBox(
                            height: 5,
                          ),
                          Transform.rotate(
                            angle: -0.785,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(size: 35, Icons.send_rounded),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Transform.rotate(
                              angle: 1.5707963267949,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      size: 35, Icons.more_horiz_rounded)))
                        ],
                      ),
                    ),
                    Positioned(
                      left: 15,
                      bottom: 100,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 17,
                            backgroundImage: AssetImage('assets/images/cr7.jpg'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            name[index],
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          OutlinedButton(
                            onPressed: () {},
         style: OutlinedButton.styleFrom(
       //   padding: deg,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7.0),
      side: BorderSide(color: Colors.white,width:2),
    
  )
  ),
                            child: Text(
                              "Followed",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 15,
                      bottom: 50,
                      child: Container(
                        width: 290,
                        child: Text(
                            style: TextStyle(
                                color: Colors.white, 
                                fontWeight: FontWeight.w700),
                            "Ask not what your conutry can do for you , ask what you do for your conutry."),
                      ),
                    ),
                    Positioned(
                      right: 15,
                      bottom: 15,
                      child: Row(
                        children: [
                           SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.music_note),
                          SizedBox(
                            width: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "   Original Audio . Play kepps minde ",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          //  Spacer(),
                          SizedBox(
                            width: 180,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(5)),
                            width: 30,
                            height: 30,
                            child: Center(
                              child: Icon(Icons.music_note_sharp),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
