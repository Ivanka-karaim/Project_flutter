import 'package:flutter/material.dart';

class CustomPostLikesWidget extends StatelessWidget{
  const CustomPostLikesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
            child:
            const Text(
              "201 likes",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 16,
                fontFamily: 'Roboto'), ),
          ),
        ),
      ],
    );
  }

}