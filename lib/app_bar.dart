import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          TextButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const <Widget>[
                Text(
                  'Instagram',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Icon(Icons.expand_more, size: 20.0, color: Colors.black),
              ],
            ),
            onPressed: () {},
          ),
          Expanded(
            child: Container(color: Colors.white),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
            color: Colors.grey, width: 0.50), // колір та товщина межі
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite_outline),
          color: Colors.black,
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.message),
          color: Colors.black,
          onPressed: () {},
        ),
      ],
    );
  }
}
