import 'package:cuni/States/MyBaseMainPageState.dart';
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
      case "notebook":
            child = const MyMainPage(title: " ");
      case "mainPage":
            child = const MyLoginPage(title: " ");
      case "stats":
            child = const MyMainPage(title: " ");
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