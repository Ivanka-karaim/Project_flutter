import 'package:flutter/material.dart';

import '../direct_page/general.dart';

class CustomPhotosPerson extends StatelessWidget {
  const CustomPhotosPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      // height:500,
      physics: const ScrollPhysics(),
      crossAxisCount: 3, // кількість елементів в рядку
      children: List.generate(
        15,
        (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DirectPage()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/my.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
          // return Image.asset('assets/images/my.jpg');
        },
      ),
    );
    // return Container(height:200, color: Colors.grey,);
  }
}
