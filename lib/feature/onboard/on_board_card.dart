import 'package:flutter/material.dart';

import 'on_board_models.dart';

class OnBoardCard extends StatelessWidget {
  const OnBoardCard({Key? key, required this.model}) : super(key: key);
  final OnBoardModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(model.title),
        Text(model.description),
        Image.asset(model.imageWithPath)
      ],
    );
  }
}
