import 'package:flutter/material.dart';
import 'package:sMarket/config/constant.dart';
import 'package:sMarket/screens/components/home_body.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(color: Colors.white, child: BodyHome()),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
          icon: Icon(
            Icons.filter_alt,
            color: Colors.grey[600],
          ),
          onPressed: () {}),
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text("Home", style: TextStyle(color: Colors.grey[900])),
      elevation: 0,
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.grey[600],
            ),
            onPressed: () {}),
      ],
    );
  }
}
