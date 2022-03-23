import 'package:flutter/material.dart';
import 'package:state_management/product/constants/image_enum.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [Image.asset(ImageEnums.door.toPath)],
      ),
    );
  }
}
