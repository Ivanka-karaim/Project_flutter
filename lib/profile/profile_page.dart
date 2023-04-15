import 'package:flutter/material.dart';

import 'package:lab3/profile/app_bar.dart';
import 'package:lab3/profile/profile_list_view.dart';
import 'package:lab3/profile/watch_photo.dart';

import '../add/add_page.dart';
import '../direct/general.dart';
class ProfilePageNavigator extends StatelessWidget{
  const ProfilePageNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context){
            switch(settings.name){
              case '/':
                return const ProfilePage();
              case '/direct':
                return const DirectPage();
              case '/add_post':
                return const AddPage();
              case '/post':
                {
                  final args = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
                  return  CustomWatchPhotoPerson(
                      index: args['index'] as int, imageUrls: args['list'] as List<String>);
                }
              default:
                return const ProfilePage();
            }
          }
        );
      },
    );
  }

}
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarProfile(),
      body: Container(
        color: Colors.white,
        child: Column(
          children: const [Expanded(child: CustomProfileListView())],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/direct', arguments: 'Profile');
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const DirectPage()),
          // );
        },
        // backgroundColor: Colors.grey[100],
        child: const Icon(
          Icons.message_outlined,
          // color: Colors.black,
        ),
      ),
    );
  }
}
