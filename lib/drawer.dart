import 'package:flutter/material.dart';
import 'package:lab3/search_page/search_page.dart';

import 'direct_page/general.dart';

class CustomDrawerWidget extends StatelessWidget{
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            border: Border.all(color:Colors.grey, width:0.5),
            color: Colors.white,
          ),
          margin: EdgeInsets.zero,
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Instagram',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'ivanka_karayim',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: const Text('Direct'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DirectPage()),
            );

            // Update the state of the app
            // ...
            // Then close the drawer
            // Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Favourites'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Add stories'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),

      ],
    ),
    );
}

}