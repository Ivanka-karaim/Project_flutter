import 'package:flutter/material.dart';

class CustomSearchFilterWidget extends StatelessWidget {
  const CustomSearchFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width:20),
        Expanded(
          flex: 4,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[200],
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // встановлюємо однакове значення радіусу для всіх кутів
              ),
            ),
            onPressed: () {},
            child: Row(
              children: const [
                Icon(Icons.search, color: Colors.grey,),
                SizedBox(width:10),
                Text("Search", style: TextStyle(color: Colors.grey),),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: const Size(0, 0),
            ),
            onPressed: () {},
            child: Text("Filter"),
          ),
        ),
      ],
    );
  }
}
