import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_and_signup/Widget/CustomScaffold.dart';
import 'package:login_and_signup/theme/theme.dart';
import 'package:login_and_signup/screens/signin_page.dart';
import 'package:login_and_signup/screens/signup_page.dart';
import 'package:login_and_signup/Widget/Welcome_button_page.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          const Expanded(
            flex: 6,
            child: SizedBox(
              height: 10,
            ),
          ),
          Flexible(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 90.0,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
              child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                      'Welcome to Matrix',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                        color: lightColorScheme.primary,
                      ),
                    ),
                      CarouselSlider(
                          items: [1,2,3,4].map((i) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                "Welcome to the Matrix "
                                    "The best service application",
                                style: TextStyle(
                                    fontSize: 15
                                  ),
                                ),
                              ),

                            );
                          }).toList(),
                          options: CarouselOptions(
                            height: 200,
                          )
                      )
                  ]
                 )

              ),
              )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign in',
                      onTap: SignInPage(),
                      color: darkColorScheme.primary,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign up',
                      onTap: SignUpPage(),
                      color: Colors.white,
                      textColor: lightColorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}