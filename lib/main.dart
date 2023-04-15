import 'package:flutter/material.dart';
import 'package:lab3/add/add_page.dart';
import 'package:lab3/drawer.dart';

import 'package:lab3/home/posts.dart';
import 'package:lab3/model.dart';
import 'package:lab3/theme.dart';
import 'package:lab3/profile/profile_page.dart';
import 'package:lab3/reels/reels_page.dart';
import 'package:lab3/search/search_page.dart';
import 'package:provider/provider.dart';

import 'direct/general.dart';
import 'home/app_bar.dart';

class MyAppState extends State<MyApp> {
  static int cIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, app, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My App',
        theme: app.selectedTheme,
        home: Scaffold(
          body: SafeArea(
            top: false,
            // controller: tabController,
            child: IndexedStack(
              index: cIndex,
              children:  const [
                HomePageNavigator(),
                SearchPage(),
                AddPage(),
                ReelsPage(),
                ProfilePageNavigator()
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: cIndex,
            onTap: (int index) {
              setState(() {
                cIndex = index;
              });
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
                              // color: Colors.black,
                              width: 1,
                            )
                          : Border.all(
                              width: 0,
                              // color: Colors.white,
                            ),
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
      ),
    );
  }
}

class HomePageNavigator extends StatelessWidget {
  const HomePageNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, app, child) => MaterialApp(
        theme: app.selectedTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/direct': (context) => const DirectPage(),
        },
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
      body: Column(
        children: [Expanded(child: CustomPostsWidget())],
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
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AppModel>(
          create: (context) => AppModel(),
        ),
        ChangeNotifierProvider<ThemeModel>(
          create: (context) => ThemeModel(),
        )
      ],
      child: const MyApp(),
    ),
  );
}
