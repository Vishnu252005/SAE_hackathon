import 'package:get/get.dart';
import 'package:sae_hackathon/widgets_common/bg_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sae_hackathon/widgets_common/bg_widgets.dart';
import 'package:sae_hackathon/consts/consts.dart';
import 'item_details.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(Container(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      6,
                      (index) => "Baby Clothing"
                          .text
                          .size(12)
                          .fontFamily(bold)
                          .color(darkFontGrey)
                          .makeCentered()
                          .box
                          .white
                          .rounded
                          .size(120, 60)
                          .margin(EdgeInsets.symmetric(horizontal: 4))
                          .make()),
                ),
              ),
              20.heightBox,
              Expanded(
                  child: Container(
                      color: lightGrey,
                      child: GridView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 6,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 250,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8),
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                imgP5,
                                width: 200,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                              10.heightBox,
                              "laptop 4GB RAM"
                                  .text
                                  .fontFamily(semibold)
                                  .color(fontGrey)
                                  .make(),
                              10.heightBox,
                              "\$600"
                                  .text
                                  .fontFamily(semibold)
                                  .color(redColor)
                                  .size(16)
                                  .make(),
                            ],
                          ).box.roundedSM.outerShadowSm.white.make().onTap(() {
                            Get.to(() => ItemDetails(title: "Dummy Item"));
                          });
                        },
                      )))
            ],
          ),
        ),
      ),
    ));
  }
}
