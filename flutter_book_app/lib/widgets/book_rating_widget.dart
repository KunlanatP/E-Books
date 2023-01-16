import 'package:flutter/material.dart';
import 'package:flutter_book_app/constants/colors.dart';

class BookRatingWidget extends StatelessWidget {
  final double score;

  const BookRatingWidget({
    Key? key,
    required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: const Offset(3, 7),
            blurRadius: 20,
            color: kShadowColor.withOpacity(.5),
          ),
        ],
      ),
      child: Column(
        children: [
          const Icon(
            Icons.star,
            color: kIconColor,
            size: 15,
          ),
          const SizedBox(height: 5),
          Text('$score', style: theme.textTheme.caption)
        ],
      ),
    );
  }
}
