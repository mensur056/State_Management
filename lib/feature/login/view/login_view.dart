import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/feature/login/view/login_view_model.dart';
import 'package:state_management/product/constants/image_enum.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final String buttonText = 'Login';
  final String checkBoxTitle = 'Remember me';
  final String pageTitle = 'Login';
  final String _hintText = 'Name';
  late final LoginViewModel _loginViewModel;

  @override
  void initState() {
    super.initState();
    _loginViewModel = LoginViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _loginViewModel,
      builder: (context, child) {
        return bodyView(context);
      },
    );
  }

  Scaffold bodyView(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _progressIndicator(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 90, right: 90),
              child: ImageEnums.door.toImage,
            ),
            Text(
              pageTitle,
              style: const TextStyle(color: Colors.black, fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: _hintText,
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _loginViewModel.isLoading
                        ? null
                        : () {
                            _loginViewModel.controllerTextValue();
                          },
                    child: Center(child: Text(buttonText)),
                  ),
                  CheckboxListTile(
                    title: Text(checkBoxTitle),
                    value: _loginViewModel.isCheckBox,
                    onChanged: (value) {
                      _loginViewModel.changeCheckBox(value ?? false);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _progressIndicator() {
    return Consumer<LoginViewModel>(builder: (context, value, child) {
      return value.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : const SizedBox();
    });
  }
}
