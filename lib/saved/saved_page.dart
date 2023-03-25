import 'package:flutter/material.dart';
import 'package:lab3/direct_page/app_bar.dart';
import '../profile_page/photos_person.dart';




class SavedPage extends StatelessWidget {
  final Function func;
  final List<String> imgSaved;

  const SavedPage({super.key, required this.func, required this.imgSaved});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body:  Container(
        color: Colors.white,
        child: CustomPhotosPerson(imgSaved, func: func),

      ),
    );
  }
}