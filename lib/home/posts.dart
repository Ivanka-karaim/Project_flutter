

import 'package:flutter/material.dart';

import 'package:lab3/home/post/post.dart';
import 'package:lab3/home/stories.dart';

import '../post_model.dart';
import 'add_post.dart';


class CustomPostsWidget extends StatelessWidget {
  final List<Post> posts = [
    Post(
        user_name: 'bloomber',
        place: '',
        photo: 'assets/images/my.jpg',
        description: 'Love'),
    Post(
        user_name: 'ivanna',
        place: '',
        photo: 'assets/images/my3.jpg',
        description: 'My'),
    Post(
        user_name: 'ivanna',
        place: 'Town',
        photo: 'assets/images/my2.jpg',
        description: '')
  ];

  CustomPostsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return const SizedBox(
            height: 150,
            child: CustomStoriesWidget(),
          );
        } else if (index == 1) {
          return AddPost();
        }

        return CustomPostWidget(post: posts[index - 2]);

        // return CustomPostWidget(post: await fetchPost());
      },
      itemCount: 5,
    );
  }
}
