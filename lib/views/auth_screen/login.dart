import 'package:sae_hackathon/consts/consts.dart';
import 'package:sae_hackathon/homescreen/Home.dart';
import 'package:sae_hackathon/views/auth_screen/signup.dart';
import 'package:sae_hackathon/widgets_common/applogo_widget.dart';
import 'package:sae_hackathon/widgets_common/bg_widgets.dart';
import 'package:sae_hackathon/widgets_common/custom_textfield.dart';
import 'package:sae_hackathon/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../consts/lists.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              AppLogoWidget(),
              10.heightBox,
              "Log into $appname".text.fontFamily(bold).white.size(18).make(),
              10.heightBox,
              Column(
                children: [
                  CustomTextField(title: email, hint: emailHint),
                  CustomTextField(title: password, hint: passwordHint),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: forgetpass.text.make(),
                    ),
                  ),
                  5.heightBox,
                  ourButton(
                    color: redColor,
                    textcolor: whiteColor,
                    title: login,
                    onPress: () {
                      Get.to(() => Home());
                    },
                  ).box.width(context.screenWidth - 50).make(),
                  5.heightBox,
                  CreateNewAccount.text.color(fontGrey).make(),
                  5.heightBox,
                  ourButton(
                    color: redColor,
                    textcolor: whiteColor,
                    title: signup,
                    onPress: () {
                      Get.to(
                        () => const SignupScreen(),
                      );
                    },
                  ).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  loginwith.text.color(fontGrey).make(),
                  5.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      socialIconList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            socialIconList[index],
                            width: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
                  .box
                  .white
                  .padding(const EdgeInsets.all(16))
                  .shadowSm
                  .width(context.screenWidth - 70)
                  .rounded
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
