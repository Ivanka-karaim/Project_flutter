import 'package:flutter/material.dart';

import 'info_people.dart';
import 'photos_person.dart';

class CustomProfileListView extends StatelessWidget {
  const CustomProfileListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomInfoPeople(),
        CustomPhotosPerson([
          'assets/images/my.jpg',
          'assets/images/my1.jpg',
          'assets/images/my2.jpg',
          'assets/images/my3.jpg',
          'assets/images/my.jpg',
          'assets/images/my1.jpg',
          'assets/images/my2.jpg',
          'assets/images/my3.jpg',
        ])
      ],
    );
  }
}
