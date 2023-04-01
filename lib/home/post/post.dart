import 'package:flutter/material.dart';
import 'post_desc.dart';
import 'post_header.dart';
import 'post_icon_line.dart';
import 'post_likes.dart';
import 'post_time.dart';

class CustomPostWidget extends StatelessWidget {
  final int index;

  CustomPostWidget({super.key, required this.index});
  List<String> images = [
    'assets/images/my.jpg',
    'assets/images/my1.jpg',
    'assets/images/my2.jpg',
    'assets/images/my3.jpg',
    'assets/images/my.jpg',
    'assets/images/my1.jpg',
    'assets/images/my2.jpg',
    'assets/images/my3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          const CustomHeaderPostWidget(),
          Image(
            image: AssetImage(images[index]),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          CustomPostIconLineWidget(image:images[index]),
          const CustomPostLikesWidget(),
          const CustomPostDescriptionWidget(),
          const CustomPostTimeTransWidget(),
        ],
      ),
    );
  }
}
