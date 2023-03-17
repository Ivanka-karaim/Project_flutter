import 'package:flutter/material.dart';
import 'package:lab3/profile_page/app_bar.dart';
import 'package:lab3/profile_page/profile_list_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarProfile(),
      // drawer: const CustomDrawerWidget(),
      body: Container(
        color: Colors.white,
        child: Column(
          children: const [Expanded(child: CustomProfileListView())],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.favorite_outline,
          color: Colors.black,
        ),
      ),
    );
  }
}
