import 'package:flutter/material.dart';

import '../home/avatar.dart';

class CustomMessageWidget extends StatelessWidget {
  const CustomMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20)),
      onPressed: () {},
      child: Row(
        children: [
          CustomAvatarWidget(50),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "ivanka_karayim",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto'),
              ),
              Text("Привіт",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto'))
            ],
          ),
          Expanded(
            child: Container(),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
}
