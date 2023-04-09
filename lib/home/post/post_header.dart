import 'package:flutter/material.dart';

import '../../post_model.dart';
import '../avatar.dart';

class CustomHeaderPostWidget extends StatelessWidget {
  Post post=Post(user_name: 'ivanka', place: '', photo: 'assets/images/my.jpg', description: '');
  CustomHeaderPostWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 10),
        CustomAvatarWidget(40),
        const SizedBox(width: 10),
        Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(0, 0),
                ),
                onPressed: () {},
                child:  Text(
                  post.user_name,
                  style: const TextStyle(
                      // color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'Roboto'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(0, 0),
                ),
                onPressed: () {},
                child: Text(
                  post.place,
                  style: const TextStyle(
                      // color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto'),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert_outlined),
        ),
      ],
    );
  }
}
