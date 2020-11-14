import 'package:flutter/material.dart';
import 'package:sMarket/config/constant.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<String> category = ["All", "Sayur", "Frozen Food", "Bibit", "Pupuk"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) => buildCategoryItem(index),
        ),
      ),
    );
  }

  Widget buildCategoryItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: selectedIndex == index
                ? Color(0XFFFABEBC6)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(100)),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
        child: Text(category[index],
            style: TextStyle(
                color: selectedIndex == index ? Colors.white : kColorPrimary,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
