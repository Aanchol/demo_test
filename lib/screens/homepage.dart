import 'package:demo_test/models/movies_container.dart';
import 'package:demo_test/provider/movies_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../models/movies.dart';

class HomePage extends StatelessWidget {
  final Movies? movies;


  HomePage({this.movies});

  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesProvider>(

        builder: (_, provider, ___) {
          return Scaffold(
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Expanded(
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 2,
                        mainAxisExtent: 250,
                      ),
                      itemCount: provider.moviesList.moviesItemList.length,
                      itemBuilder: (context, index) => MoviesContainer(
                          movies: provider.moviesList.moviesItemList[index]),
                    ),
                  )
                ],
              ),
            ),
          );
        }
    );
  }
}


