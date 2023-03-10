import 'package:flutter/material.dart';
import 'post_header.dart';

class CustomPostWidget extends StatelessWidget {
  const CustomPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          const CustomHeaderPostWidget(),
          Image(
            image: const AssetImage('assets/images/my.jpg'),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.mode_comment_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share_outlined),
              ),
              Expanded(child: Container()),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.save),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 20,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(0, 0),
                  ),
                  onPressed: () {},
                  child: const Text("201 likes"),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 20,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(0, 0),
                  ),
                  onPressed: () {},
                  child: const Text("bloomberry_ua"),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.zero,
                child: const Text(
                  'Подаруй собі щастя!',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              const Text("1 days ago"),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 20,
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(0, 0)),
                  child: const Text("See translation"),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
