import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:state_management/feature/login/view/login_view.dart';
import 'package:state_management/feature/onboard/on_board_view.dart';
import 'package:state_management/product/model/state/project_context.dart';
import 'package:state_management/product/model/state/user_context.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => UserContext('a')),
        ChangeNotifierProvider(create: (context) => ProductContext())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const OnBoardView(),
        theme: ThemeData.light().copyWith(
            appBarTheme: const AppBarTheme(
              elevation: 0,
              backgroundColor: Colors.transparent,
              systemOverlayStyle: SystemUiOverlayStyle.dark,
            ),
            scaffoldBackgroundColor: Colors.grey[300]),
      ),
    );
  }
}
