import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:state_management/feature/controller/tab_controller.dart';
import 'package:state_management/feature/login/view/login_view.dart';
import 'package:state_management/feature/onboard/on_board_card.dart';
import 'package:state_management/feature/onboard/on_board_models.dart';
import 'package:state_management/product/model/state/project_context.dart';
import 'package:kartal/src/context_extension.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({Key? key}) : super(key: key);

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  int _selectedIndex = 0;
  final String _start = 'Start';
  final String _next = 'Next';

  bool get _isLastPage =>
      OnBoardModels.onBoardItems.length - 1 == _selectedIndex;

  bool get _isFirstPage => _selectedIndex == 0;
  ValueNotifier<bool> isBackEnable = ValueNotifier(false);

  void _incrementAndChange([int? value]) {
    if (_isLastPage && value == null) {
      _changeBackEnable(true);
      return;
    }
    _changeBackEnable(false);
    _incrementSelectedPage(value);
  }

  void _changeBackEnable(bool value) {
    if (value == isBackEnable.value) return;
    isBackEnable.value = value;
  }

  void _incrementSelectedPage([int? value]) {
    setState(() {
      if (value != null) {
        _selectedIndex = value;
      } else {
        _selectedIndex++;
      }
    });
  }

  final String title = 'Skip';
  final IconData icon = Icons.chevron_left_rounded;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  onPageChanged: (value) {
                    _incrementAndChange(value);
                  },
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
                  child: Text(_isLastPage ? _start : _next),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Center(
        child: Text(
          context.watch<ProductContext>().newUserName,
          style: const TextStyle(color: Colors.red),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      actions: [
        ValueListenableBuilder<bool>(
          valueListenable: isBackEnable,
          builder: (BuildContext context, bool value, Widget? child) {
            return value
                ? const SizedBox()
                : TextButton(
                    onPressed: () {
                      context.read<ProductContext>().changeName('Mansur');
                      context.navigateToPage(const LoginView());
                    },
                    child: Text(title));
          },
        )
      ],
      leading: _isFirstPage
          ? null
          : IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: Colors.black,
              ),
            ),
    );
  }
}
