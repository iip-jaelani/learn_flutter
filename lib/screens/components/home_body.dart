import 'package:flutter/material.dart';

import 'caregory_home.dart';
import "receipt_card.dart";

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Category(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 20.0,
                    childAspectRatio: 1.89),
                itemBuilder: (context, index) => CardReceipt()),
          ),
        )
      ],
    );
  }
}
