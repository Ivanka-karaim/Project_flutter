import 'package:flutter/material.dart';

class CustomBottomNavigateBar extends StatelessWidget {
  const CustomBottomNavigateBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home_filled, color: Colors.black),
          label: "Main",
        ),
        const BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black), label: "Search"),
        const BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined, color: Colors.black),
            label: "New post"),
        const BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined, color: Colors.black),
            label: "Watch"),
        BottomNavigationBarItem(
            // icon: Icon(Icons.account_circle, color: Colors.black),
            icon: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle, // форма круга
                // image: FileImage(File("lab3/my.jpg")),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  // збільшувати зображення, щоб заповнити контейнер
                  image: AssetImage("assets/images/my.jpg"), // зображення
                ),
              ),
            ),
            label: "Account"),
      ],
    );
  }
}
