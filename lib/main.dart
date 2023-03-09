import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: Column(
          children: [Expanded(child: CustomStoriesWidget())],
        ),
        bottomNavigationBar: CustomBottomNavigateBar());
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          TextButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const <Widget>[
                Text(
                  'Instagram',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Icon(Icons.expand_more, size: 20.0, color: Colors.black),
              ],
            ),
            onPressed: () {},
          ),
          Expanded(child: Container(color: Colors.white))
        ],
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
            color: Colors.grey, width: 0.50), // колір та товщина межі
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite_outline),
          color: Colors.black,
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.message),
          color: Colors.black,
          onPressed: () {},
        ),
      ],
    );
  }
}

class CustomStoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Container(child:Text("243623"));
    return Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return CustomStoriePersonWidget();
              }
              return CustomStorieWidget();
            },
            itemCount: 20));
  }
}

class CustomStoriePersonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),

                  shape: BoxShape.circle, // форма круга
                  // image: FileImage(File("lab3/my.jpg")),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    // збільшувати зображення, щоб заповнити контейнер
                    image: AssetImage("assets/images/my.jpg"), // зображення
                  ),
                ),
              ),
              const Icon(
                Icons.circle,
                color: Colors.white,
                size: 25,
              ),
              const Icon(
                Icons.add_circle,
                color: Colors.blue,
                size: 23,
              ),
            ],
          ),

          const SizedBox(height: 8), // відступ між зображенням та підписом
          const SizedBox(
            width: 75,
            child: Text(
              "Your story",
              textAlign: TextAlign.center,
              maxLines: 2,
              // максимальна кількість рядків тексту
              overflow: TextOverflow.ellipsis,
              // обрізання тексту, якщо він не вміщується
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomStorieWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Column(
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),

                shape: BoxShape.circle, // форма круга
                // image: FileImage(File("lab3/my.jpg")),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  // збільшувати зображення, щоб заповнити контейнер
                  image: AssetImage("assets/images/my.jpg"), // зображення
                ),
              ),
            ),
          ),

          const SizedBox(height: 8), // відступ між зображенням та підписом
          const SizedBox(
            width: 75,
            child: Text(
              "title",
              textAlign: TextAlign.center,
              maxLines: 2,
              // максимальна кількість рядків тексту
              overflow: TextOverflow.ellipsis,
              // обрізання тексту, якщо він не вміщується
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomBottomNavigateBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled, color: Colors.black),
          label: "Main",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black), label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined, color: Colors.black),
            label: "New post"),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined, color: Colors.black),
            label: "Watch"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.black),
            label: "Account"),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: HomePage(),
    );
  }
}

void main() {
  runApp(MyApp());
}
