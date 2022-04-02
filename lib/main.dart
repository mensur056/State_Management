import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



import 'feature/onboard/on_board_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(debugShowCheckedModeBanner: false,
      home: const OnBoardView(),
      theme: ThemeData.light().copyWith(appBarTheme: const AppBarTheme(elevation: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,),
          scaffoldBackgroundColor: Colors.
          grey[300]),
    );
  }
}
