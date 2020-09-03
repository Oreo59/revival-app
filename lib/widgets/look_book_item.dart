import 'package:flutter/material.dart';

class LookBookItem extends StatelessWidget {
  final int height;
  final String imageUrl;

  LookBookItem({@required this.height, @required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        margin: EdgeInsets.all(2),
        height: height.toDouble(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3),
              BlendMode.darken,
            ),
          ),
        ),
      ),
    );
  }
}
