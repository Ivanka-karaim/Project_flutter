import 'package:flutter/material.dart';
import 'package:lab3/direct_page/app_bar.dart';

import 'context_direct.dart';

class DirectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body:  Container(
        color: Colors.white,
        child: Column(
          children: const [Expanded(child: CustomContextDirect())],
        ),
      ),
    );
  }
}
