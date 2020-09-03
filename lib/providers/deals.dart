import 'package:flutter/foundation.dart';

class Deal with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final String code;
  bool isNew;

  Deal({
    @required this.id,
    @required this.title,
    this.description,
    this.code,
    this.isNew = false,
  });

  void toggleNewStatus() {
    isNew = !isNew;
    notifyListeners();
  }
}
