import 'package:cuni/States/MyMainPageState.dart';
import 'package:cuni/main.dart';
import 'package:flutter/material.dart';

class TabNavigator extends StatelessWidget {
  TabNavigator({required this.navigatorKey, required this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  @override
  Widget build(BuildContext context) {
    Widget child=this;
    switch (tabItem){
      case "mainPage":
            child = const MyHomePage(title: " ");
      case "notebook":
            child = const MyLoginPage(title: " ");
      case "stats":
            child = const MyHomePage(title: " ");
      case "profile":
            child = const MyLoginPage(title: " ");
    }    
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => child
        );
      },
    );
  }
}