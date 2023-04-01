import 'package:flutter/material.dart';

class CustomPostTimeTransWidget extends StatelessWidget {
  const CustomPostTimeTransWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        const Text("1 days ago",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Roboto',
              fontSize: 12,
            )),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          height: 20,
          child: TextButton(
            style: TextButton.styleFrom(
                padding: EdgeInsets.zero, minimumSize: const Size(0, 0)),
            child: const Text(
              "See translation",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  fontSize: 12),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
