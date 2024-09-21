import 'package:sae_hackathon/consts/consts.dart';
import 'package:sae_hackathon/widgets_common/applogo_widget.dart';
import 'package:sae_hackathon/widgets_common/bg_widgets.dart';
import 'package:sae_hackathon/widgets_common/custom_textfield.dart';
import 'package:sae_hackathon/widgets_common/our_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../consts/lists.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? ischeck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        resizeToAvoidBottomInset: true,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              AppLogoWidget(),
              5.heightBox,
              "Join the $appname".text.fontFamily(bold).white.size(18).make(),
              5.heightBox,
              Column(
                children: [
                  CustomTextField(title: nameHint, hint: name),
                  CustomTextField(title: email, hint: emailHint),
                  CustomTextField(title: password, hint: passwordHint),
                  CustomTextField(title: retypepass, hint: passwordHint),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: forgetpass.text.make(),
                    ),
                  ),
                  5.heightBox,
                  Row(
                    children: [
                      Checkbox(
                        value: ischeck,
                        onChanged: (newValue) {
                          setState(() {
                            ischeck = newValue;
                          });
                        },
                        checkColor: redColor,
                      ),
                      10.widthBox,
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "I agee to the ",
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: fontGrey,
                                ),
                              ),
                              TextSpan(
                                text: termandcond,
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: redColor,
                                ),
                              ),
                              TextSpan(
                                text: privacypolicy,
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: redColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  //   5.heightBox,
                  ourButton(
                    color: ischeck == true ? redColor : lightGrey,
                    textcolor: whiteColor,
                    title: signup,
                    onPress: () {},
                  ).box.width(context.screenWidth - 50).make(),
                  5.heightBox,
                  10.widthBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      alreadacc.text.color(fontGrey).make(),
                      5.widthBox,
                      login.text.color(redColor).make().onTap(() {
                        Get.back();
                      }),
                    ],
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
