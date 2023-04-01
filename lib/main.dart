import 'package:flutter/material.dart';
import 'package:lab3/add/add_page.dart';
import 'package:lab3/drawer.dart';

import 'package:lab3/home/posts.dart';
import 'package:lab3/model.dart';
import 'package:lab3/profile/profile_page.dart';
import 'package:lab3/reels/reels_page.dart';
import 'package:lab3/search/search_page.dart';
import 'package:provider/provider.dart';

import 'home/app_bar.dart';

class MyAppState extends State<MyApp> with TickerProviderStateMixin {
  static int cIndex = 0;

  static late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
    tabController.addListener(() {
      setState(() {
        cIndex = tabController.index;
      });
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Scaffold(
        body: TabBarView(
          controller: tabController,
          children: const [
            HomePage(),
            SearchPage(),
            AddPage(),
            ReelsPage(),
            ProfilePage()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          currentIndex: cIndex,
          onTap: (int index) {
            cIndex = index;
            tabController.animateTo(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: cIndex == 0
                  ? const Icon(Icons.home_filled)
                  : const Icon(Icons.home_outlined),
              label: "Main",
            ),
            BottomNavigationBarItem(
                icon: cIndex == 1
                    ? const Icon(
                        Icons.image_search_outlined,
                      )
                    : const Icon(
                        Icons.search,
                      ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: cIndex == 2
                    ? const Icon(
                        Icons.add_box,
                      )
                    : const Icon(
                        Icons.add_box_outlined,
                      ),
                label: "New post"),
            BottomNavigationBarItem(
                icon: cIndex == 3
                    ? const Icon(
                        Icons.video_library,
                      )
                    : const Icon(
                        Icons.video_library_outlined,
                      ),
                label: "Watch"),
            BottomNavigationBarItem(
                // icon: Icon(Icons.account_circle, color: Colors.black),
                icon: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    border: cIndex == 4
                        ? Border.all(
                            color: Colors.black,
                            width: 1,
                          )
                        : Border.all(width: 0, color: Colors.white),
                    shape: BoxShape.circle, // форма круга
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/my.jpg"), // зображення
                    ),
                  ),
                ),
                label: "Account"),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawerWidget(),
      body: Container(
        color: Colors.white,
        child: Column(
          children: const [Expanded(child: CustomPostsWidget())],
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

void main() {
  runApp(
    ChangeNotifierProvider(
      child: const MyApp(),
      create: (context) => AppModel(),
    ),
  );
}
