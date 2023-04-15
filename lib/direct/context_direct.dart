import 'package:flutter/material.dart';
import 'package:lab3/direct/message.dart';
import 'package:lab3/direct/type_message.dart';


import 'search_filter.dart';


class CustomContextDirect extends StatelessWidget {
  const CustomContextDirect({super.key});



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return const SizedBox(
            height: 60,
            child: CustomSearchFilterWidget(),
          );
        }else if (index==1){
          return const SizedBox(
            height: 60,
            child: CustomTypeMessagesWidget(),
          );
        }else if (index==2){
          return Text(ModalRoute.of(context)!.settings.arguments as String);
        }
        return const CustomMessageWidget();
      },
      itemCount: 20,
    );
  }
}