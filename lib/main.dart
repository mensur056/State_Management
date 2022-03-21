import 'package:flutter/material.dart';
import 'package:state_management/feature/onboard/on_board_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: OnBoardView(),
    );
  }
}
