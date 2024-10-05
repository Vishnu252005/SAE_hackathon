import 'package:sae_hackathon/consts/lists.dart';
import 'package:sae_hackathon/profilescreen/components/details_card.dart';
import 'package:sae_hackathon/widgets_common/bg_widgets.dart';
import '../consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Edit profile button
                Align(
                  alignment: Alignment.topRight,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0), // Adjust padding here
                    child: Icon(Icons.edit, color: whiteColor),
                  ),
                ),

                // User details section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        imgProfile2,
                        width: 100,
                        fit: BoxFit.cover,
                      ).box.roundedFull.clip(Clip.antiAlias).make(),
                      10.widthBox,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Dummy User".text.fontFamily(semibold).white.make(),
                            5.heightBox,
                            "customer@example.com".text.white.make(),
                          ],
                        ),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: whiteColor),
                        ),
                        onPressed: () {},
                        child: "Logout".text.fontFamily(semibold).white.make(),
                      ),
                    ],
                  ),
                ),
                20.heightBox,

                // Details section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    detailsCard(
                        count: "00",
                        title: "In Your Cart",
                        width: context.screenWidth / 3.4),
                    detailsCard(
                        count: "00",
                        title: "In Your Wishlist",
                        width: context.screenWidth / 3.4),
                    detailsCard(
                        count: "00",
                        title: "In Your Orders",
                        width: context.screenWidth / 3.4),
                  ],
                ),
                //buttons section
                40.heightBox,
                ListView.separated(
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return const Divider(
                            color: lightGrey,
                          );
                        },
                        itemCount: profileButtonList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: Image.asset(profileButtonsIcon[index],
                                width: 22),
                            title: profileButtonList[index]
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                          );
                        })
                    .box
                    .white
                    .rounded
                    .margin(EdgeInsets.all(12))
                    .padding(EdgeInsets.symmetric(horizontal: 16))
                    .shadowSm
                    .make()
                    .box
                    .color(redColor)
                    .make()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
