import 'package:flutter/material.dart';

class AddPage extends StatelessWidget{
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const CustomAppBar(),
      // drawer: const CustomDrawerWidget(),
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text('Add post'),
        ),
      ),
    );
  }

}