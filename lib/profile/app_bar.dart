import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../saved/saved_page.dart';
import '../theme.dart';

class CustomAppBarProfile extends StatelessWidget
    implements PreferredSizeWidget {
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
        style: ElevatedButton.styleFrom(
            // backgroundColor: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const <Widget>[
            Text(
              'ivanka_karayim',
              style: TextStyle(
                // color: Colors.black,
                fontSize: 20,
                fontFamily: 'Roboto',
              ),
            ),
            Icon(
              Icons.expand_more,
              size: 20.0,
              // color: Colors.black,
            ),
          ],
        ),
        onPressed: () {},
      ),
      // backgroundColor: Colors.white,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        side:
            BorderSide(color: Colors.grey, width: 0.5), // колір та товщина межі
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.brightness_6),
          // color: Colors.black,
          onPressed: () {
            ThemeModel model = Provider.of<ThemeModel>(context, listen:false);
            model.swapTheme();
          },
        ),
        IconButton(
          icon: const Icon(Icons.add_box_outlined),
          // color: Colors.black,
          onPressed: () {
            Navigator.pushNamed(context, '/add_post');
          },
        ),
        IconButton(
          icon: const Icon(Icons.more_vert_outlined),
          // color: Colors.black,
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SavedPage()),
                          );
                        },
                        child: const Text('Saved'))
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
