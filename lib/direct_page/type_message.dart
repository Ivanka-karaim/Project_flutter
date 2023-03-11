import 'package:flutter/material.dart';

class CustomTypeMessagesWidget extends StatelessWidget {
  const CustomTypeMessagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 2,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[100],
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    10), // встановлюємо однакове значення радіусу для всіх кутів
              ),
            ),
            onPressed: () {},
            child: const Text(
              "All",
              style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Roboto',
                  fontSize: 16,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 3,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[200],
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    10), // встановлюємо однакове значення радіусу для всіх кутів
              ),
            ),
            onPressed: () {},
            child: const Text(
              "Primary",
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Roboto', fontSize: 14),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 3,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[200],
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    10), // встановлюємо однакове значення радіусу для всіх кутів
              ),
            ),
            onPressed: () {},
            child: const Text(
              "General",
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Roboto', fontSize: 14),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 3,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[200],
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    10), // встановлюємо однакове значення радіусу для всіх кутів
              ),
            ),
            onPressed: () {},
            child: const Text(
              "Requests",
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Roboto', fontSize: 14),
            ),
          ),
        ),
        const SizedBox(width: 20)
      ],
    );
  }
}
