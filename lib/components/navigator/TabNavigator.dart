import 'package:flutter/material.dart';
import 'package:flutter_woyaoyundong/pages/HomePage.dart';
import 'package:flutter_woyaoyundong/pages/MyPage.dart';
import 'package:flutter_woyaoyundong/pages/MatchPage.dart';
import 'package:flutter_woyaoyundong/pages/TrainPage.dart';

import 'NavigationIconView.dart';

class TabNavigator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabNavigatorState();
  }
}

class _TabNavigatorState extends State<TabNavigator> {
  int _currentIndex = 0;
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.red;

  List<NavigationIconView> _navigationIconView;

  List bottom_titles = ['场馆', "培训", "赛事", "我的"];
  List bottom_icons = [
    'assets/images/tabBar/tab_stadium.png',
    "assets/images/tabBar/tab_train.png",
    "assets/images/tabBar/tab_match.png",
    "assets/images/tabBar/tab_my.png",
  ];
  List bottom_select_icons = [
    'assets/images/tabBar/tab_stadium_select.png',
    "assets/images/tabBar/tab_train_select.png",
    "assets/images/tabBar/tab_match_select.png",
    "assets/images/tabBar/tab_my_select.png",
  ];



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigationIconView = [
      for (var i = _currentIndex; i < bottom_titles.length; i++)
        NavigationIconView(
            title: bottom_titles[i],
            icon: bottom_icons[i],
            activedIconPath: bottom_select_icons[i])
    ];
  }

  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[HomePage(), TrainPage(), MatchPage(), MyPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: _navigationIconView.map((view) => view.item).toList(),
      ),
    );
  }
}
