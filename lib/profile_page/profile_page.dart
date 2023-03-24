import 'package:flutter/material.dart';
import 'package:lab3/profile_page/app_bar.dart';
import 'package:lab3/profile_page/profile_list_view.dart';

import '../direct_page/general.dart';

class ProfilePage extends StatelessWidget {
  final Function func;


  ProfilePage( {super.key, required this.func});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarProfile(func:func),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [Expanded(child: CustomProfileListView(func:func))],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DirectPage()),
          );
        },
        backgroundColor: Colors.grey[100],
        child: const Icon(
          Icons.message_outlined,
          color: Colors.black,
        ),
      ),
    );
  }
}
