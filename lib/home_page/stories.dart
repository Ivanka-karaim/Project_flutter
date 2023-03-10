import 'package:flutter/material.dart';
import 'package:lab3/home_page/storie.dart';
import 'package:lab3/home_page/storie_person.dart';

class CustomStoriesWidget extends StatelessWidget {
  const CustomStoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return const CustomStoriePersonWidget();
            }
            return CustomStorieWidget();
          },
          itemCount: 20),
    );
  }
}
