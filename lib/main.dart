import 'package:flutter/material.dart';
import 'package:lab3/home_page/bottom_bar.dart';
import 'package:lab3/home_page/posts.dart';


import 'home_page/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: Container(
          color: Colors.white,
          child: Column(
            children: const [Expanded(child: CustomPostsWidget())],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigateBar());
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: HomePage(),
    );
  }
}

void main() {
  runApp(const MyApp());
}
