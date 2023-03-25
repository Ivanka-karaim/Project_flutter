import 'package:flutter/material.dart';


import '../saved/saved_page.dart';

class CustomAppBarProfile extends StatelessWidget implements PreferredSizeWidget {
  final Function func;
  final List<String> imgSaved;

  CustomAppBarProfile({super.key, required this.func, required this.imgSaved});

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
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Column(
                  children: [
                    TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SavedPage(func:func, imgSaved:imgSaved)),
                      );
                    }, child: Text('Saved'))
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
