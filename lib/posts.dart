import 'package:flutter/material.dart';
import 'package:lab3/post.dart';
import 'package:lab3/stories.dart';

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
        return const CustomPostWidget();
      },
      itemCount: 20,
    );
  }
}
