import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({super.key, required this.price, this.color, this.fontSize});
  final String price;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: '\$$price.',
          style: TextStyle(
              color: color, fontSize: fontSize, fontWeight: FontWeight.bold),
          children: [
            TextSpan(
                text: '00',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))
          ]),
    );
  }
}
