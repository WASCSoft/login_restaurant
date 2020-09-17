import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomInputField extends StatelessWidget {
  Icon fieldIcon;
  String hintText;

  CustomInputField(this.fieldIcon, this.hintText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Material(
        elevation: 15.0,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: fieldIcon,
            ),
            Container(
              width: 200,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: hintText,
                      fillColor: Colors.white,
                      filled: true),
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
