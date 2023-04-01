import 'package:flutter/material.dart';


import '../home/post/post_desc.dart';
import '../home/post/post_header.dart';
import '../home/post/post_icon_line.dart';
import '../home/post/post_likes.dart';
import '../home/post/post_time.dart';
import 'app_bar.dart';

class CustomPhotosPerson extends StatelessWidget {
  const CustomPhotosPerson(this.imageUrls, {super.key});
  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: imageUrls.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 2.0,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) =>
                      // CustomWatchPhotoWidget(index),
                      Scaffold(
                        appBar: const CustomAppBarProfile(),
                        body: Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Column(
                            children: [
                              const CustomHeaderPostWidget(),
                              Hero(
                                tag: 'image${index.toString()}',
                                child: Image(
                                  image: AssetImage(imageUrls[index]),
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              CustomPostIconLineWidget(image:imageUrls[index]),
                              const CustomPostLikesWidget(),
                              const CustomPostDescriptionWidget(),
                              const CustomPostTimeTransWidget(),
                            ],
                          ),
                        ),
                      )),
            );
          },
          child: Hero(
            tag: 'image${index.toString()}',
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageUrls[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        );
        // return Image.asset('assets/images/my.jpg');
      },
    );

    // return Container(height:200, color: Colors.grey,);
  }
}
