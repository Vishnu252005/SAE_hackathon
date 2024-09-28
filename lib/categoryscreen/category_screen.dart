import 'package:get/get.dart';
import 'package:sae_hackathon/consts/lists.dart';
import 'package:sae_hackathon/widgets_common/bg_widgets.dart';

import '../consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sae_hackathon/widgets_common/bg_widgets.dart';
import 'category_details.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Container(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Categories",
              style: TextStyle(
                  fontSize: 20, // Font size of the title
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          body: Container(
            padding: EdgeInsets.all(12),
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    mainAxisExtent: 200),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Image.asset(
                        categoryImages[index],
                        height: 120,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      10.heightBox,
                      "${categorieslist[index]}"
                          .text
                          .color(darkFontGrey)
                          .align(TextAlign.center)
                          .make(),
                    ],
                  )
                      .box
                      .white
                      .rounded
                      .clip(Clip.antiAlias)
                      .outerShadowSm
                      .make()
                      .onTap(() {
                    Get.to(() => CategoryDetails(title: categorieslist[index]));
                  });
                }),
          ),
        ),
      ),
    );
  }
}
