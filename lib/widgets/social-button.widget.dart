import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String pathImage;
  final String text;
  const SocialButton({super.key, required this.pathImage, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: () {},
        key: super.key,
        borderRadius: const BorderRadius.all(Radius.circular(40)),
        child: Container(
          height: 40,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            border: Border.fromBorderSide(BorderSide()),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Image(
                  image: AssetImage(pathImage),
                  height: 14,
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
