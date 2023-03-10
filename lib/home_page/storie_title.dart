import 'package:flutter/cupertino.dart';

class CustomStorieTitle extends StatelessWidget{
  const CustomStorieTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
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
    );
  }

}