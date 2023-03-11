import 'package:flutter/material.dart';

class CustomPostIconLineWidget extends StatelessWidget{
  const CustomPostIconLineWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_outline),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.mode_comment_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share_outlined),
        ),
        Expanded(child: Container()),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.bookmark_outline),
        ),
      ],
    );
  }

}