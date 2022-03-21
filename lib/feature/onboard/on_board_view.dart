import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({Key? key}) : super(key: key);

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView>
    with SingleTickerProviderStateMixin {
  final String _skipTitle = 'Skip';
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
          icon: const Icon(
            Icons.chevron_left_rounded,
            color: Colors.green,
          ),
        ),
      ),
      body: Column(
        children: [
          const Text("Hello"),
          const Text("Hello World"),
          Image.asset('assets/images/ic_chef.png'),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TabPageSelector(
                controller: _tabController,
              ),
              FloatingActionButton(
                onPressed: () {},
                child: const Text('Next'),
              )
            ],
          )
        ],
      ),
    );
  }
}
