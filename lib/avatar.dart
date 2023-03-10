import 'package:flutter/material.dart';

class CustomAvatarWidget extends StatelessWidget {
  double size;

  CustomAvatarWidget(this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.zero,
          minimumSize: Size(0, 0),
          side: BorderSide.none,
          elevation: 0),
      child: Container(
        width: size,
        height: size,
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
    );
  }
}
