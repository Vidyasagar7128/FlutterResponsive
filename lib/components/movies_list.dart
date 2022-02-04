import 'package:flutter/material.dart';
import 'package:webapp/constants.dart';

class MoviesList extends StatelessWidget {
  const MoviesList({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1.0,
  }) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.all(defaultPadding),
        decoration: const BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.all(
            Radius.circular(3.0),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.amber[400],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                  ),
                  child: const Icon(Icons.storage_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 15.0),
              height: 5.0,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
