import 'package:flutter/material.dart';

import 'info_people.dart';
import 'photos_person.dart';

class CustomProfileListView extends StatelessWidget{
  const CustomProfileListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomInfoPeople(),
        CustomPhotosPerson()],



    );

  }

}