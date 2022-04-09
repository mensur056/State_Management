import 'package:flutter/cupertino.dart';

class LoginViewModel extends ChangeNotifier {
  bool isCheckBox = false;
  String? _inputText;
  bool isLoading = false;

  void changeCheckBox(bool value) {
    isCheckBox = value;
    notifyListeners();
  }

  void _changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  Future<bool> controllerTextValue() async {
    _changeLoading();
    await Future.delayed(const Duration(seconds: 1));
    _changeLoading();
    return _inputText != null;
  }
}
