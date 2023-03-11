import 'package:flutter/material.dart';
import 'package:lab3/direct_page/message.dart';
import 'package:lab3/direct_page/type_message.dart';


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
        }
        return const CustomMessageWidget();
      },
      itemCount: 20,
    );
  }
}