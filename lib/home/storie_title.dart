
import 'package:flutter/material.dart';

class CustomStorieTitle extends StatelessWidget{
  const CustomStorieTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 75,
      child: Text(
        "story",
        textAlign: TextAlign.center,
        maxLines: 2,
        // максимальна кількість рядків тексту
        overflow: TextOverflow.ellipsis,
        // обрізання тексту, якщо він не вміщується
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: Colors.black,
          fontFamily: 'Roboto',
        ),
      ),
    );
  }

}