import 'package:flutter/material.dart';
import 'package:lab3/direct/app_bar.dart';

import 'context_direct.dart';

class DirectPage extends StatelessWidget {
  const DirectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body:  Container(
        color: Colors.white,
        child: Column(
          children: const [Expanded(child: CustomContextDirect())],
        ),
      ),
    );
  }
}
