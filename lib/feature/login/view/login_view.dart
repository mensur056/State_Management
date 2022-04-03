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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 90, right: 90),
              child: ImageEnums.door.toImage,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ), ElevatedButton(
                    onPressed: () {},
                    child: Center(child: Text(buttonText)),
                  ),
                  CheckboxListTile(
                    title:Text(checkBoxTitle),
                    value: true,
                    onChanged: (value) {},
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
