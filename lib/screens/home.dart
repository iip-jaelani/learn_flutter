import 'package:flutter/material.dart';
import 'package:sMarket/config/constant.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.dark,
          actions: <Widget>[
            Expanded(
              flex: 1,
              child: IconButton(
                  icon: Icon(
                    Icons.person_pin_circle_outlined,
                    color: Colors.grey[700],
                  ),
                  onPressed: () {}),
            ),
            Expanded(
                flex: 10,
                child: Center(
                  child: Text(
                    "Bandung kulon satu jawabarat cipongkor citalem,Blon su jawabarat cipongkor citalem,Bandung kulon satu jawabarat cipongkor citalem",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 18.0,
                    ),
                  ),
                )),
            Expanded(
              flex: 1,
              child: IconButton(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.grey[700],
                  ),
                  onPressed: () {}),
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 0.0),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: ListView(
                children: <Widget>[
                  SearchBar(),
                  Card(
                    elevation: 6,
                    color: Colors.white,
                    shadowColor: Colors.grey,
                    child: Container(
                      padding: EdgeInsets.all(30.0),
                      child: Center(
                        child: Text("category"),
                      ),
                    ),
                  ),
                  Text("data"),
                  SizedBox(
                    height: 300.0,
                  ),
                  Text("data"),
                  Text("data"),
                  SizedBox(
                    height: 300.0,
                  ),
                  Text("data"),
                  SizedBox(
                    height: 300.0,
                  ),
                  Text("data"),
                  SizedBox(
                    height: 300.0,
                  ),
                  Text("data"),
                  Text("data"),
                ],
              ))
            ],
          ),
        ));
  }
}

// search components
class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(icon: Icon(Icons.filter_alt), onPressed: () {}),
        Expanded(
            child: TextField(
          decoration: InputDecoration(
            hintText: "Search . . .",
            isDense: true, // and add this line
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              borderSide: BorderSide(
                color: Colors.grey[300],
                width: 1.0,
              ),
            ),
            contentPadding: EdgeInsets.all(11.0),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              borderSide: BorderSide(
                color: Colors.grey[300],
                width: 1.0,
              ),
            ),
          ),
        )),
        IconButton(icon: Icon(Icons.search), onPressed: () {})
      ],
    );
  }
}
