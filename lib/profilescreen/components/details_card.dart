import 'package:sae_hackathon/consts/consts.dart';
import 'package:flutter/material.dart';

Widget detailsCard(
    {width, String? count = "00", String? title = "In your Cart"}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      (count ?? "00").text.fontFamily(bold).color(darkFontGrey).size(16).make(),
      5.heightBox,
      (title ?? "In your Cart").text.color(darkFontGrey).make(),
    ],
  )
      .box
      .white
      .rounded
      .width(width)
      .height(80)
      .padding(const EdgeInsets.all(4))
      .make();
}
