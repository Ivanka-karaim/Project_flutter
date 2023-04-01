import 'package:flutter/material.dart';

class CustomPostDescriptionWidget extends StatelessWidget{
  const CustomPostDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          height: 20,
          child: TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: const Size(0, 0),
            ),
            onPressed: () {},
            child: const Text("bloomberry_ua",
              style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.w500,fontSize: 15,
                  fontFamily: 'Roboto'),),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          padding: EdgeInsets.zero,
          child: const Text(
            'Подаруй собі щастя!',
            style: TextStyle(fontSize: 15,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400 ),
            textAlign: TextAlign.center,


          ),
        ),
      ],
    );
  }

}