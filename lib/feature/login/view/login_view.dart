import 'package:flutter/material.dart';
import 'package:state_management/product/constants/image_enum.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only( left: 60, right: 60),
            child: ImageEnums.door.toImage,
          )
        ],
      ),
    );
  }
}
