import 'package:flutter/material.dart';

class CardReceipt extends StatefulWidget {
  @override
  _CardReceiptState createState() => _CardReceiptState();
}

class _CardReceiptState extends State<CardReceipt> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.56,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.green[400], borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Column(
              children: <Widget>[
                Text(
                  "Dolor proident irure aliquip consequat.",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                ),
                Text(
                  "Dolor proident irure aliquip consequat tempor id nulla consequat sint nisi.Dolor sint nisi.",
                  style: TextStyle(color: Colors.white, fontSize: 14.0),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            )),
            SizedBox(width: 30.0),
            AspectRatio(
              aspectRatio: 0.71,
              child: Image.network(
                "https://lh3.googleusercontent.com/proxy/_5_0ScivFbjPz-MdvG-P5MrVG2alnMZzOqRz930aGXx9m6Ii68ud6LwHlHdr1tCI5aAknmR1iOoJUDNaXJlB_dMWtMYocRm9yaMq1MfpiVKXB6hmgm37_x7hvJJvWK1cm3jF",
                alignment: Alignment.centerLeft,
                fit: BoxFit.contain,
              ),
            )
          ],
        ),
      ),
    );
  }
}
