import 'package:flutter/material.dart';
import 'package:lab3/home/storie_title.dart';

class CustomStoriePersonWidget extends StatelessWidget {
  const CustomStoriePersonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.zero,
            minimumSize: const Size(0, 0),
            side: BorderSide.none,
            elevation: 0),
        onPressed: () {},
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
            const CustomStorieTitle(),
          ],
        ),
      ),
    );
  }
}
