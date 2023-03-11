import 'package:flutter/material.dart';
import 'post_desc.dart';
import 'post_header.dart';
import 'post_icon_line.dart';
import 'post_likes.dart';
import 'post_time.dart';

class CustomPostWidget extends StatelessWidget {
  const CustomPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          const CustomHeaderPostWidget(),
          Image(
            image: const AssetImage('assets/images/my.jpg'),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          const CustomPostIconLineWidget(),
          const CustomPostLikesWidget(),
          const CustomPostDescriptionWidget(),
          const CustomPostTimeTransWidget(),
        ],
      ),
    );
  }
}
