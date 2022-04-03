import 'package:flutter/cupertino.dart';

class LoginViewModel extends ChangeNotifier {
  bool isCheckBox = false;
  String? _inputText;

  void changeCheckBox(bool value) {
    isCheckBox = value;
    notifyListeners();
  }
}
