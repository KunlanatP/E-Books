import 'package:flutter/material.dart';
import 'package:flutter_book_app/constants/colors.dart';
import 'package:flutter_book_app/widgets/book_rating_widget.dart';
import 'package:flutter_book_app/widgets/two_side_rounded_button_widget.dart';

class ReadingListBookWidget extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;
  final void Function()? onPressedDetails;
  final void Function()? onPressedRead;

  const ReadingListBookWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.auth,
    this.rating = 0,
    this.onPressedDetails,
    this.onPressedRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: 245,
      width: 202,
      margin: const EdgeInsets.only(left: 24, bottom: 40),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 33,
                    color: kShadowColor.withOpacity(.84),
                  ),
                ],
              ),
            ),
          ),
          Image.asset(image, width: 150),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
                BookRatingWidget(score: rating),
              ],
            ),
          ),
          Positioned(
            top: 160,
            child: SizedBox(
              height: 85,
              width: 202,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: theme.textTheme.caption,
                        children: [
                          TextSpan(
                            text: '$title\n',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: auth,
                            style: const TextStyle(
                              color: kLightBlackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      InkWell(
                        onTap: onPressedDetails,
                        child: Container(
                          width: 101,
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          alignment: Alignment.center,
                          child: const Text('Details'),
                        ),
                      ),
                      Expanded(
                        child: TwoSideRoundedButtonWidget(
                          text: 'Read',
                          onPressed: onPressedRead,
                        ),
                      ),
                    ],
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
