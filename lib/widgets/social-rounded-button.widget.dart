import 'package:flutter/material.dart';

class SocialRoundedButton extends StatelessWidget {
  final String pathImage;
  const SocialRoundedButton({super.key, required this.pathImage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      key: super.key,
      borderRadius: const BorderRadius.all(Radius.circular(100)),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          border: Border.fromBorderSide(BorderSide()),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Image(
            image: AssetImage(pathImage),
            height: 30,
          ),
        ),
      ),
    );
  }
}
