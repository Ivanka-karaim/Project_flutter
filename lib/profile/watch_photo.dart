import 'package:flutter/material.dart';

import '../home/post/post_desc.dart';
import '../home/post/post_header.dart';
import '../home/post/post_icon_line.dart';
import '../home/post/post_likes.dart';
import '../home/post/post_time.dart';
import '../post_model.dart';
import 'app_bar.dart';

class CustomWatchPhotoPerson extends StatelessWidget{
  final int index;
  final List<String> imageUrls;
  const CustomWatchPhotoPerson({super.key, required this.index, required this.imageUrls});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarProfile(),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            CustomHeaderPostWidget(post: Post(user_name: 'ivanka_karaim', place: '', photo: imageUrls[index], description: '')),
            Hero(
              tag: 'image${index.toString()}',
              child: Image(
                image: AssetImage(imageUrls[index]),
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
             ElevatedButton(
                onPressed: () {Navigator.pop(context, index);},
                child:Text("Back", style: TextStyle(color: Colors.black),),
              ),

          ],
        ),
      ),
    );
  }

}