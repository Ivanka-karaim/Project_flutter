import 'package:flutter/material.dart';

import '../../post_model.dart';

class CustomPostDescriptionWidget extends StatelessWidget{
  final Post post;
  const CustomPostDescriptionWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          height: 20,
          child: TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: const Size(0, 0),
            ),
            onPressed: () {},
            child: Text(post.user_name,
              style: const TextStyle(color: Colors.black,
                  fontWeight: FontWeight.w500,fontSize: 15,
                  fontFamily: 'Roboto'),),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          padding: EdgeInsets.zero,
          child: Text(
            post.description,
            style: const TextStyle(fontSize: 15,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400 ),
            textAlign: TextAlign.center,


          ),
        ),
      ],
    );
  }

}