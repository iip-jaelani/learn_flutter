import 'package:sMarket/config/constant.dart';
import 'package:sMarket/screens/chat.dart';
import 'package:sMarket/screens/feed.dart';
import 'package:sMarket/screens/history.dart';
import 'package:sMarket/screens/home.dart';
import 'package:sMarket/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:sMarket/screens/transaction.dart';

class NavigationBottom extends StatefulWidget {
  @override
  _NavigationBottomState createState() => _NavigationBottomState();
}

class _NavigationBottomState extends State<NavigationBottom> {
  int curentTab = 0;
  final List<Widget> screens = [
    Home(),
    History(),
    Transaction(),
    Chat(),
    Feed(),
    Profile()
  ];
  Widget curentScreen = Home();
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: curentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    curentScreen = Home();
                    curentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      curentTab == 0 ? Icons.home : Icons.home_outlined,
                      color: curentTab == 0 ? kColorPrimary : Colors.grey,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: curentTab == 0 ? kColorPrimary : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    curentScreen = Feed();
                    curentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.rss_feed,
                      color: curentTab == 1 ? kColorPrimary : Colors.grey,
                    ),
                    Text(
                      "Feed",
                      style: TextStyle(
                        color: curentTab == 1 ? kColorPrimary : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    curentScreen = Transaction();
                    curentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.swap_horiz,
                      color: curentTab == 2 ? kColorPrimary : Colors.grey,
                    ),
                    Text(
                      "Transaction",
                      style: TextStyle(
                        color: curentTab == 2 ? kColorPrimary : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    curentScreen = Chat();
                    curentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      curentTab == 3 ? Icons.chat : Icons.chat_outlined,
                      color: curentTab == 3 ? kColorPrimary : Colors.grey,
                    ),
                    Text(
                      "Chat",
                      style: TextStyle(
                        color: curentTab == 3 ? kColorPrimary : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    curentScreen = Profile();
                    curentTab = 4;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      curentTab == 4
                          ? Icons.account_circle_rounded
                          : Icons.account_circle_outlined,
                      color: curentTab == 4 ? kColorPrimary : Colors.grey,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                        color: curentTab == 4 ? kColorPrimary : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
