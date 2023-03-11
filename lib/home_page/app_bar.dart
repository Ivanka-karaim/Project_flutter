import 'package:flutter/material.dart';

import '../direct_page/general.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:
          TextButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const <Widget>[
                Text(
                  'Instagram',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'Roboto',),
                ),
                Icon(
                    Icons.expand_more,
                    size: 22.0,
                    color: Colors.black,
                ),
              ],
            ),
            onPressed: () {},
          ),

      backgroundColor: Colors.white,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
            color: Colors.grey, width: 0.5), // колір та товщина межі
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite_outline),
          color: Colors.black,
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.chat_bubble_outline_outlined),
          color: Colors.black,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DirectPage()),
            );
          },
        ),
      ],
    );
  }
}
