import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        height: 110,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTdoY1dpk4Z_JKL9913uHWX01wKY1jiMJ41eWnV1vlHbXqOmFNq&usqp=CAU'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3),
              BlendMode.darken,
            ),
          ),
        ),
        child: Center(
          child: Text(
            'TRAPPED INSIDE',
            textScaleFactor: 1.5,
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
    );
  }
}
