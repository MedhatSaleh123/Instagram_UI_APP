import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
'https://img.freepik.com/premium-photo/young-man-hd-8k-wallpaper-stock-photographic-image_853645-59446.jpg',
  

];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 5),
                hintText: 'Search',
                fillColor: Color(0xff262626),
                prefixIcon: Icon(Icons.search),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ),
        body: GridView.builder(
          itemCount: 51,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 3,
              crossAxisSpacing: 3,
              childAspectRatio: 1),
          itemBuilder: (context, index) {
            return InkWell(
              child: Container(
                child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(images[index]),
                    )??CircularProgressIndicator(),
              ),
            );
          },
        ),
      ),
    );
  }
}
