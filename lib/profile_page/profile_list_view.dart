import 'package:flutter/material.dart';

import 'info_people.dart';
import 'photos_person.dart';

class CustomProfileListView extends StatelessWidget{
  final Function func;




  CustomProfileListView({super.key, required this.func});


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomInfoPeople(),
        CustomPhotosPerson(const [
          'assets/images/my.jpg',
          'assets/images/my1.jpg',
          'assets/images/my2.jpg',
          'assets/images/my3.jpg',
          'assets/images/my.jpg',
          'assets/images/my1.jpg',
          'assets/images/my2.jpg',
          'assets/images/my3.jpg',
        ], func:func)],



    );

  }

}