import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
    this.height = 125.0,
    required this.width,
    required this.imageUrl, this.child, this.padding,
  }) : super(key: key);

  final double width;
  final double height;
  final String imageUrl;
   final Widget? child;
   final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: NetworkImage(
                imageUrl
            ),
            fit: BoxFit.cover,
          )
      ),
      child: child,
    );
  }
}