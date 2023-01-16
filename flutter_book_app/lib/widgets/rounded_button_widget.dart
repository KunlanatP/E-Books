import 'package:flutter/material.dart';
import 'package:flutter_book_app/constants/colors.dart';

class RoundedButtonWidget extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final double verticalPadding;
  final double fontSize;

  const RoundedButtonWidget({
    Key? key,
    required this.text,
    this.onPressed,
    this.verticalPadding = 16,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: verticalPadding),
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 15),
              blurRadius: 30,
              color: const Color(0xFF666666).withOpacity(.11),
            ),
          ],
        ),
        child: Text(
          text,
          style: theme.textTheme.subtitle2?.copyWith(fontSize: fontSize),
        ),
      ),
    );
  }
}
