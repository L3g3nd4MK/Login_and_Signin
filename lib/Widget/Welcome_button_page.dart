import 'package:flutter/material.dart';
import 'package:login_and_signup/screens/signup_page.dart';
import 'package:login_and_signup/screens/signin_page.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key, this.buttonText, this.onTap, this.color, this.textColor});
  final String? buttonText;
  final Widget? onTap;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (e)=> onTap!,
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration:  BoxDecoration(
            color: color!,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)
            ),
          ),
          child: Text(
            buttonText!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 8.0,
              fontWeight: FontWeight.bold,
              color: textColor!,
            ),
          ),
        )
    );
  }
}