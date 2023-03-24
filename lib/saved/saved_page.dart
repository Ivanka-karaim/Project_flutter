import 'package:flutter/material.dart';
import 'package:lab3/direct_page/app_bar.dart';
import 'package:lab3/main.dart';

import '../profile_page/photos_person.dart';
// import 'package:lab3/profile_page/photos_person.dart';



class SavedPage extends StatelessWidget {
  final Function func;

  SavedPage({super.key, required this.func});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body:  Container(
        color: Colors.white,
        child: CustomPhotosPerson(MyAppState.imageUrls, func: func),

      ),
    );
  }
}