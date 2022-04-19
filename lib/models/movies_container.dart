import 'package:demo_test/models/movies.dart';
import 'package:demo_test/provider/movies_provider.dart';
import 'package:demo_test/screens/description_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class MoviesContainer extends StatelessWidget {
  final Movies? movies;


  MoviesContainer({@required this.movies});

  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesProvider>(
        builder: (_,provider,___) {
          return InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return DescriptionPage(movies: movies,);
                  }));
            },
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(2),
              ),
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        child: Image.asset(movies!.img,
                          fit: BoxFit.cover,
                        ),

                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            movies!.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),


                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
}
