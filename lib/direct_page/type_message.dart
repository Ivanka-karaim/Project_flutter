import 'package:flutter/material.dart';

class CustomTypeMessagesWidget extends StatelessWidget{
  const CustomTypeMessagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        const SizedBox(width: 20,),
        Expanded(flex:2,child:
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[200],
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // встановлюємо однакове значення радіусу для всіх кутів
            ),
          ),
          onPressed: () {},
          child:
              Text("All",style: TextStyle(color: Colors.black),),
          ),),
        const SizedBox(width: 10,),
        Expanded(flex:3,child:
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[200],
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // встановлюємо однакове значення радіусу для всіх кутів
            ),
          ),
          onPressed: () {},
          child:
          Text("Primary",style: TextStyle(color: Colors.black),),
        ),),
        const SizedBox(width: 10,),
        Expanded(flex:3,child:
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[200],
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // встановлюємо однакове значення радіусу для всіх кутів
            ),
          ),
          onPressed: () {},
          child:
          Text("General",style: TextStyle(color: Colors.black),),
        ),),
        const SizedBox(width: 10,),
        Expanded(flex:3,child:
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[200],
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // встановлюємо однакове значення радіусу для всіх кутів
            ),
          ),
          onPressed: () {},
          child:
          Text("Requests",style: TextStyle(color: Colors.black),),
        ),),
        SizedBox(width:20)

      ],
    );
  }

}