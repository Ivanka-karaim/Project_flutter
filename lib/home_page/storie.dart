import 'package:flutter/material.dart';
import 'package:lab3/home_page/avatar.dart';
import 'package:lab3/home_page/storie_title.dart';

class CustomStorieWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, left:8,right: 8),
      child: Column(
        children: [
          CustomAvatarWidget(75),
          const SizedBox(height: 8), // відступ між зображенням та підписом
          const CustomStorieTitle(),
        ],
      ),
    );
  }
}