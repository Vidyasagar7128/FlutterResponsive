import 'package:flutter/material.dart';
import 'package:webapp/components/all_movies.dart';
import 'package:webapp/components/movie_rating_list.dart';
import 'package:webapp/constants.dart';
import 'package:webapp/responsive.dart';
import 'package:webapp/screens/dashboard_details.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Expanded(
          child: Column(
            children: [
              const DashboardDetails(),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 500.0,
                      padding: const EdgeInsets.all(defaultPadding),
                      decoration: const BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(4.0),
                        ),
                      ),
                      child: const AllMovies(),
                    ),
                  ),
                  if (!Responsive.isMobile(context))
                    const SizedBox(width: defaultPadding),
                  if (!Responsive.isMobile(context)) const TopMovies(),
                ],
              ),
              if (Responsive.isMobile(context))
                const Expanded(
                  child: TopMovies(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopMovies extends StatelessWidget {
  const TopMovies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        height: 500.0,
        decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top Movies',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(height: defaultPadding),
            const MovieRatingList(
              title: 'End Game',
              caption: '9.5',
              price: '29.0',
            ),
            const MovieRatingList(
              title: 'Infinity War',
              caption: '9.0',
              price: '25.0',
            ),
            const MovieRatingList(
              title: 'Iron Man 3',
              caption: '8.5',
              price: '30.0',
            ),
            const MovieRatingList(
              title: 'Dr.Strange',
              caption: '9.3',
              price: '29.0',
            ),
          ],
        ),
      ),
    );
  }
}
