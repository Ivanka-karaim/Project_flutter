import 'package:flutter/material.dart';
import '../../post_model.dart';
import 'post_desc.dart';
import 'post_header.dart';
import 'post_icon_line.dart';
import 'post_likes.dart';
import 'post_time.dart';

class CustomPostWidget extends StatelessWidget {
  final Post post;
  const CustomPostWidget( {super.key, required this.post});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          CustomHeaderPostWidget(post:post),
          Image(
            image: AssetImage(post.photo),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          CustomPostIconLineWidget(image:post.photo),
          const CustomPostLikesWidget(),
          CustomPostDescriptionWidget(post:post),
          const CustomPostTimeTransWidget(),
        ],
      ),
    );
  }
}
