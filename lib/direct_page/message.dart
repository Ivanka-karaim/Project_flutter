import 'package:flutter/material.dart';

import '../home_page/avatar.dart';

class CustomMessageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20)),
      onPressed: () {  }, child:
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          CustomAvatarWidget(50),
          SizedBox(width:10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:const [
            Text("polomozik", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400),),
            Text("Люблю тебе", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300))],
          ),
          Expanded(child: Container(),),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined, color: Colors.grey,))
        ],
      ),

    );
  }

}