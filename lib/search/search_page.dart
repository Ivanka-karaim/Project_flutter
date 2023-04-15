import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget{
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const CustomAppBar(),
      // drawer: const CustomDrawerWidget(),
      body: Container(
        color: Colors.white,
        child: Center(
          child: ElevatedButton(
            child: Text('Search'),
            onPressed: (){Navigator.pop(context);},
            // onPressed: () { Navigator.pop(context); },

          )
        ),
      ),
    );
  }

}