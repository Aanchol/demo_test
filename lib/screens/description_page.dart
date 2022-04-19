import 'package:demo_test/models/movies.dart';
import 'package:demo_test/provider/movies_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class DescriptionPage extends StatelessWidget {
  final Movies? movies;


  DescriptionPage({@required this.movies});


  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesProvider>(

        builder: (_,provider,___) {
          return Scaffold(
            body: SafeArea(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 200,
                            height: 250,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(movies!.img),
                                    fit: BoxFit.cover
                                )

                            )
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(movies!.title, style: TextStyle(
                              fontSize: 20,
                            ),),
                            Text("Release date-01.01.00", style: TextStyle(
                              fontSize: 15,
                            ),),
                            Text("abc xyz", style: TextStyle(
                              fontSize: 15,
                            ),),

                          ],
                        ),


                      ],
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      color: Colors.grey.shade900,
                      child: Row(
                        children: [
                          InkWell(
                            child: Icon(
                              Icons.facebook,
                              color: Colors.white,
                              size: 50,
                            ),
                            onTap: (){

                            },
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            child: Icon(
                              FontAwesomeIcons.instagramSquare,
                              color: Colors.white,
                              size: 50,
                            ),
                            onTap: (){},
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            child: Icon(
                              FontAwesomeIcons.twitterSquare,
                              color: Colors.white,
                              size: 50,
                            ),
                            onTap: (){},
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            child: Icon(
                              FontAwesomeIcons.shareAlt,
                              color: Colors.white,
                              size: 50,
                            ),
                            onTap: (){},
                          ),

                        ],
                      )
                      ,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.all(18),
                          child: Column(
                            children: [
                              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),

                            ],
                          ),
                        ),
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

