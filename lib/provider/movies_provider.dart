import 'package:demo_test/models/movies_list.dart';
import 'package:flutter/cupertino.dart';


class MoviesProvider with ChangeNotifier{
  final MoviesList? _moviesList = MoviesList();

  MoviesList get moviesList => _moviesList!;

}