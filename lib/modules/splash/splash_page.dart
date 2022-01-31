import 'package:flutter/material.dart';
import 'package:tinder/modules/splash/constants.dart';

import 'icons/constant_icons.dart';
import 'widgets/logo.dart';
import 'widgets/sign_in_button.dart';

class SplashPageTinder extends StatelessWidget {
  const SplashPageTinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xFFe3537a),
                  Color(0xFFea7860),
                ],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Center(
                    child: LogoWidget(),
                  ),
                  SizedBox(
                    width: 400,
                    height: 50,
                    // child: Text(
                    //   SplashConstants.terms,
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //   ),
                    // ),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(children: [
                        TextSpan(
                            text:
                                'By tapping Create Account or sign in, you agree to our ',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        TextSpan(
                          text: 'Terms.',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                        TextSpan(
                            text: ' Learn how we process your data in our ',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                        TextSpan(
                            text: ' and ',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        TextSpan(
                          text: 'Cookies Policy.',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const SignInButton(
                    icon: ConstantIcons.apple,
                  ),
                  const SignInButton(
                    icon: ConstantIcons.facebook,
                  ),
                  const SignInButton(
                    icon: ConstantIcons.conversationBalloon,
                  ),
                  const SizedBox(height: 50),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      SplashConstants.troubleSignIn,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.white,
            size: 40,
          ),
        ]),
      ),
    );
  }
}
