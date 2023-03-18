import 'package:flutter/material.dart';
import 'package:lab3/profile_page/app_bar.dart';
import 'package:lab3/profile_page/profile_list_view.dart';

import '../direct_page/general.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarProfile(),
      body: Container(
        color: Colors.white,
        child: Column(
          children: const [Expanded(child: CustomProfileListView())],
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
