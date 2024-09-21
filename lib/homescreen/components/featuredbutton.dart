import '/consts/consts.dart';
import 'package:flutter/cupertino.dart';

Widget featuredButton({required String? title, icon}) {
  return Row(
    children: [
      Image.asset(icon, width: 40, fit: BoxFit.fill),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  )
      .box
      .width(200)
      .margin(EdgeInsets.symmetric(horizontal: 4))
      .roundedSM
      .padding(EdgeInsets.all(8))
      .outerShadowSm
      .make();
}
