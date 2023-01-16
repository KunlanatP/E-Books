import 'package:flutter/material.dart';
import 'package:flutter_book_app/constants/colors.dart';

class TwoSideRoundedButtonWidget extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final double borderRadius;

  const TwoSideRoundedButtonWidget({
    Key? key,
    required this.text,
    this.onPressed,
    this.borderRadius = 29,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(borderRadius),
            bottomRight: Radius.circular(borderRadius),
          ),
        ),
        child: Text(text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
