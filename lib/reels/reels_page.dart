import 'package:flutter/material.dart';

class ReelsPage extends StatelessWidget{
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const CustomAppBar(),
      // drawer: const CustomDrawerWidget(),
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text('Reels'),
        ),
      ),
    );
  }

}