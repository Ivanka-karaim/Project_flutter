import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lab3/home/post/post.dart';

import '../post_model.dart';
import 'package:http/http.dart' as http;

class AddPost extends StatefulWidget {
  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  Future<Post>? post;

  Future<Post> newPost() {
    return Future<Post>.delayed(
      const Duration(seconds: 5),
      () async {
        final response = await http.get(Uri.parse(
            'https://raw.githubusercontent.com/Ivanka-karaim/Project_flutter/50d4be6edc5fb3267284c41be30cd2ecadac23dc/assets/json/post.json'));
        if (response.statusCode == 200) {
          var p = Post.fromJson(jsonDecode(response.body));
          return p;
        } else {
          throw Exception('error');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: post != null
                  ? null
                  : () => setState(
                        () {
                          post = newPost();
                        },
                      ),
              child: const Text(
                'Завантажити фото',
                style: TextStyle(color: Colors.black),
              )),
          post == null
              ? const Text('Пост не завантажено')
              : FutureBuilder(
                  future: post,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return CustomPostWidget(post: snapshot.data as Post);
                    } else {
                      return const CircularProgressIndicator();
                    }
                  })
        ]);
  }
}
