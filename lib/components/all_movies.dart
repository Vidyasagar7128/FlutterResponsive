import 'package:flutter/material.dart';
import 'package:webapp/components/movies_list.dart';
import 'package:webapp/constants.dart';
import 'package:webapp/responsive.dart';

class AllMovies extends StatelessWidget {
  const AllMovies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('All Movies'),
            ElevatedButton.icon(
              style: TextButton.styleFrom(padding: const EdgeInsets.all(13.0)),
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Book'),
            ),
          ],
        ),
        const SizedBox(height: defaultPadding),
        Responsive(
          mobile: MoviesList(
              crossAxisCount: _size.width < 650 ? 2 : 4,
              childAspectRatio: _size.width < 650 ? 1.5 : 1),
          tablet: const MoviesList(),
          desktop: MoviesList(childAspectRatio: _size.width < 1400 ? 1.1 : 1.4),
        ),
      ],
    );
  }
}
