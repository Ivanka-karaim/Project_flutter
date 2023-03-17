import 'package:flutter/material.dart';

import '../direct_page/general.dart';

class CustomAppBarProfile extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarProfile({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),

      title: TextButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const <Widget>[
            Text(
              'ivanka_karayim',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'Roboto',
              ),
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
        side:
        BorderSide(color: Colors.grey, width: 0.5), // колір та товщина межі
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.add_box_outlined),
          color: Colors.black,
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_vert_outlined),
          color: Colors.black,
          onPressed: () { },
        ),
      ],
    );
  }
}
