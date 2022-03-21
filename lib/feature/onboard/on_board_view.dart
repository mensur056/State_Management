import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({Key? key}) : super(key: key);

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  final String _skipTitle = 'Skip';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: [TextButton(onPressed: () {}, child: Text(_skipTitle))],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.chevron_left_rounded,color: Colors.green,),
        ),
      ),
    );
  }
}
