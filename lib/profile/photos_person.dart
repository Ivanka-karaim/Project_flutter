import 'package:flutter/material.dart';


class CustomPhotosPerson extends StatefulWidget {
  const CustomPhotosPerson(this.imageUrls, {super.key});

  final List<String> imageUrls;

  @override
  State<CustomPhotosPerson> createState() => _CustomPhotosPersonState();
}

class _CustomPhotosPersonState extends State<CustomPhotosPerson> {
  int ident = 0;

  updateInd(int ind) {
    setState(() {
      ident = ind;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: widget.imageUrls.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 2.0,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () async {
            // var ind = await Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (_) => CustomWatchPhotoPerson(
            //         index: index, imageUrls: widget.imageUrls),
            //
            //   ),
            // );
            var ind = await Navigator.pushNamed(context, '/post',
                arguments: {'index': index, 'list': widget.imageUrls});
            if (ind != null) {
              updateInd(ind as int);
            }
          },
          child: Hero(
            tag: 'image${index.toString()}',
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: Container(
                decoration: BoxDecoration(
                  border: index == ident
                      ? Border.all(
                          color: Colors.red, // кольор обводки
                          width: 2.0, // товщина обводки
                          style: BorderStyle.solid, // стиль лінії обводки
                        )
                      : null,
                  image: DecorationImage(
                    image: AssetImage(widget.imageUrls[index]),
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
