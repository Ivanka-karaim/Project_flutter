import 'package:flutter/material.dart';
import 'package:lab3/direct/app_bar.dart';
import 'package:lab3/model.dart';
import 'package:provider/provider.dart';
import '../profile/photos_person.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppModel>(
      builder: (context, app, child) => Scaffold(
        appBar: const CustomAppBar(),
        body: Container(
          color: Colors.white,
          child: CustomPhotosPerson(app.imageUrlsSaved),
        ),
      ),
    );
  }
}
