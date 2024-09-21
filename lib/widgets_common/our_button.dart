import '/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ourButton({
  required VoidCallback onPress,
  required Color color,
  required Color textcolor,
  required String title,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child: title.text.color(textcolor).fontFamily(bold).make(),
  );
}
