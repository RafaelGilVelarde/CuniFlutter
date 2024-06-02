import 'package:cuni/Navs/MyNavigatorState.dart';
import 'package:cuni/main.dart';
import 'package:flutter/material.dart';

enum TabItem {mainPage, notebook, stats, profile}

class MyBaseMainPageState extends State<MyBaseMainPage> {

  TabItem currentTab = TabItem.mainPage;

  Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
    "mainPage": GlobalKey<NavigatorState>(),
    "notebook": GlobalKey<NavigatorState>(),
    "stats": GlobalKey<NavigatorState>(),
    "profile": GlobalKey<NavigatorState>(),
  };
  int _selectedIndex = 0;


  void _selectTab(int index) {
    if(index == currentTab.index){
      _navigatorKeys[TabItem.values[index].toString()]?.currentState?.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        currentTab = TabItem.values[index];
        _selectedIndex = index;
        print("Current: "+currentTab.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) async {
         final isFirstRouteInCurrentTab=!await _navigatorKeys[currentTab.toString()]!.currentState!.maybePop();
        if (isFirstRouteInCurrentTab) {
          if (currentTab != "mainPage") {
            print("Popped");
            _selectTab(0);

            return;
          }
        }
        // let system handle back button if we're on the first route
        return;
      },
        child: Scaffold(
        body: Stack(
          children:<Widget>[
            _buildOffstageNavigator("mainPage"),
            _buildOffstageNavigator("notebook"),
            _buildOffstageNavigator("stats"),
            _buildOffstageNavigator("profile"),
          ]
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueAccent,
          onTap: (int index) { _selectTab(index); },
          currentIndex: _selectedIndex, 
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.looks_one),
              label: "AAA"
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.looks_two),
              label: "BBB"
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.looks_3),
              label: "CCC"
            ),
              BottomNavigationBarItem(
              icon: new Icon(Icons.looks_4),
              label: "DDD"
            ),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
   
  }



  Widget _buildOffstageNavigator(String tabItem) {
    print(currentTab.toString() != tabItem);
    print("Item: "+tabItem);
    print("Current Tab compared: "+currentTab.toString());
    return Offstage(
      offstage: currentTab.toString() != "TabItem.$tabItem",
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem]!,
        tabItem: tabItem,
      ),
    );
  }
}




