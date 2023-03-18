import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab3/profile_page/app_bar.dart';

import '../home_page/post/post.dart';
import '../home_page/post/post_desc.dart';
import '../home_page/post/post_header.dart';
import '../home_page/post/post_icon_line.dart';
import '../home_page/post/post_likes.dart';
import '../home_page/post/post_time.dart';

class CustomWatchPhotoWidget extends StatelessWidget{
  int index;
  CustomWatchPhotoWidget(this.index, {super.key });



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBarProfile(),
      body:
      Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            const CustomHeaderPostWidget(),
            Hero(
              tag: 'image${index.toString()}',
            child: Image(
              image: const AssetImage('assets/images/my.jpg'),
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),),
            const CustomPostIconLineWidget(),
            const CustomPostLikesWidget(),
            const CustomPostDescriptionWidget(),
            const CustomPostTimeTransWidget(),
          ],
        ),
      ),


    );
  }

}