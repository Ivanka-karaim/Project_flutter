import 'package:flutter/material.dart';
import 'package:lab3/main.dart';

class CustomPostIconLineWidget extends StatefulWidget {
  final Function func;
  final String image;

  const CustomPostIconLineWidget(
      {super.key, required this.func, required this.image});

  @override
  State<CustomPostIconLineWidget> createState() =>
      _CustomPostIconLineWidgetState();
}

class _CustomPostIconLineWidgetState extends State<CustomPostIconLineWidget> {
  bool like = false;
  late bool saved;

  @override
  void initState() {
    super.initState();

    saved = MyAppState.imageUrlsSaved.contains(widget.image);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              like = like ? false : true;
            });
          },
          icon: like
              ? const Icon(Icons.favorite_rounded)
              : const Icon(Icons.favorite_outline),
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
          onPressed: () {
            widget.func(widget.image, saved);
            setState(() {
                saved = saved ? false : true;
              },
            );
          },
          icon: saved
              ? const Icon(Icons.bookmark)
              : const Icon(Icons.bookmark_outline),
        ),
      ],
    );
  }
}
