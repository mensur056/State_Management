import 'package:flutter/material.dart';
import 'package:state_management/product/constants/image_enum.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);
  final String buttonText = 'Login';
  final String checkBoxTitle = 'Remember';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 90, right: 90),
            child: ImageEnums.door.toImage,
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(buttonText),
          ),
          CheckboxListTile(
            title:Text(checkBoxTitle),
            value: true,
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}
