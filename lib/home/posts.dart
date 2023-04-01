import 'package:flutter/material.dart';
import 'package:lab3/home/post/post.dart';
import 'package:lab3/home/stories.dart';

class CustomPostsWidget extends StatelessWidget {

  const CustomPostsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return const SizedBox(
            height: 150,
            child: CustomStoriesWidget(),
          );
        }
        return CustomPostWidget(index:index-1);
      },
      itemCount: 9,
    );
  }
}
