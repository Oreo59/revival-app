import 'package:flutter/foundation.dart';

class LookBook with ChangeNotifier {
  final String id;
  final String imageUrl;
  bool isVideo;

  LookBook({
    @required this.id,
    this.imageUrl,
    this.isVideo = false,
  });
}
