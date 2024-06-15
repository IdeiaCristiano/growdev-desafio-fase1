import 'package:flutter/material.dart';
import 'package:growdev_desafio_fase1/widgets/social-rounded-button.widget.dart';
import 'package:growdev_desafio_fase1/widgets/social-button.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage("assets/images/medium.png"),
              width: 150,
              key: ValueKey("imageMedium"),
            ),
          ),
          Text(
            "Join Medium.",
            key: ValueKey("textTitle"),
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SocialButton(
            pathImage: "assets/images/google.png",
            text: "Sign up with Google",
            key: ValueKey("signupGoogle"),
          ),
          SizedBox(
            height: 10,
          ),
          SocialButton(
            pathImage: "assets/images/email.png",
            text: "Sign up with Email",
            key: ValueKey("signupEmail"),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.black38,
                    key: ValueKey("dividerLeft"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Or, sign up with",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.black38,
                    key: ValueKey("dividerRight"),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SocialRoundedButton(
            pathImage: "assets/images/facebook.png",
            key: ValueKey("buttonFacebook"),
          ),
          SizedBox(
            height: 30,
          ),
          Text.rich(
            TextSpan(
              text: "Already have an account? ",
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: "Sign in",
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text.rich(
              TextSpan(
                text: "By singning up, you agree to our ",
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 12,
                ),
                children: [
                  TextSpan(
                    text: "Terms of Service",
                    style: TextStyle(
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: " and acknowledge that our ",
                  ),
                  TextSpan(
                    text: "Privacy Policy",
                    style: TextStyle(
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: " applies to you.",
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}
