import 'package:flutter/material.dart';
import 'package:webapp/constants.dart';

class MovieRatingList extends StatelessWidget {
  const MovieRatingList(
      {Key? key,
      @required this.title,
      @required this.caption,
      @required this.price})
      : super(key: key);
  final String? title, caption, price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.white12,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(2.0),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(
            height: 20,
            width: 20,
            child: Icon(Icons.tv_rounded, color: Colors.red),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title.toString(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    caption.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          Text('\$$price')
        ],
      ),
    );
  }
}
