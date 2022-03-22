import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:state_management/feature/controller/tab_controller.dart';
import 'package:state_management/feature/onboard/on_board_card.dart';
import 'package:state_management/feature/onboard/on_board_models.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({Key? key}) : super(key: key);

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  int _selectedIndex = 0;

  bool get _isLastPage =>
      OnBoardModels.onBoardItems.length - 1 == _selectedIndex;

  void _incrementAndChange() {
    if (_isLastPage) {
      return;
    }
    _incrementSelectedPage();
  }

  void _incrementSelectedPage() {
    setState(() {
      _selectedIndex++;
    });
  }

  final String title = 'Skip';
  final IconData icon = Icons.chevron_left_rounded;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: [TextButton(onPressed: () {}, child: Text(title))],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  itemCount: OnBoardModels.onBoardItems.length,
                  itemBuilder: (context, index) {
                    return OnBoardCard(
                        model: OnBoardModels.onBoardItems[index]);
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TabIndicator(
                  selectedIndex: _selectedIndex,
                ),
                FloatingActionButton(
                  onPressed: () {
                    _incrementAndChange();
                  },
                  child: Text(_isLastPage ? 'Start' : 'Next'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
