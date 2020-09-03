import 'package:flutter/material.dart';

import './lookbook.dart';

class LookBookList with ChangeNotifier {
  List<LookBook> _lookbook = [
    LookBook(
      id: 'lb1',
      imageUrl: 'https://www.revivalapparel.co/wp-content/uploads/Small-Beginnings-2020-350x350.jpg',
      isVideo: false,
    ),
    LookBook(
      id: 'lb2',
      imageUrl: 'https://www.revivalapparel.co/wp-content/uploads/Small-Beginnings-2020-350x350.jpg',
      isVideo: false,
    ),
    LookBook(
      id: 'lb3',
      imageUrl: 'https://www.revivalapparel.co/wp-content/uploads/Small-Beginnings-2020-350x350.jpg',
      isVideo: false,
    ),
    LookBook(
      id: 'lb4',
      imageUrl: 'https://www.revivalapparel.co/wp-content/uploads/Small-Beginnings-2020-350x350.jpg',
      isVideo: true,
    ),
    LookBook(
      id: 'lb5',
      imageUrl: 'https://www.revivalapparel.co/wp-content/uploads/Small-Beginnings-2020-350x350.jpg',
      isVideo: false,
    ),
  ];

  List<LookBook> get lookBook {
    return [..._lookbook];
  }
}
