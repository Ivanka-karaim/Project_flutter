import 'package:flutter/material.dart';
import 'package:lab3/home_page/post/post.dart';
import 'package:lab3/home_page/stories.dart';

class CustomPostsWidget extends StatelessWidget {
  final Function func;
  const CustomPostsWidget({super.key, required this.func});

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
        return CustomPostWidget(index:index-1,func:func);
      },
      itemCount: 9,
    );
  }
}
