import 'package:flutter/material.dart';
import 'package:movie_app_new/models/movie.dart';

class MovieDetail extends StatefulWidget {
  final int index;
  final Movie models;

  const MovieDetail({Key key, this.index, this.models}) : super(key: key);
  @override
  _MovieDetailState createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue[300],
            Colors.indigo[800],
          ],
        )),
        child: ListView(
          children: [
            Container(
              height: 300,
              child: Stack(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    child: Image.network(
                      "https://image.tmdb.org/t/p/w220_and_h330_face${widget.models.backdropPath}",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 10,
                    right: 10,
                    top: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 200,
                              width: 150,
                              child: Hero(
                                tag: "${widget.index}",
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.network(
                                    "https://image.tmdb.org/t/p/w220_and_h330_face${widget.models.posterPath}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  "${widget.models.originalTitle}",
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "Category Movie | 2 Hours",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Text("${widget.models.voteAverage}"),
                                        Text(
                                          "Rating",
                                          style: TextStyle(
                                            color: Colors.grey[300],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text("${widget.models.voteCount}"),
                                        Text(
                                          "VoteCount",
                                          style: TextStyle(
                                            color: Colors.grey[300],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text("${widget.models.popularity}"),
                                        Text(
                                          "Popularity",
                                          style: TextStyle(
                                            color: Colors.grey[300],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      actions: [
                        Icon(
                          Icons.bookmark_border,
                          size: 35,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Text(
                    "${widget.models.overview}",
                    textAlign: TextAlign.justify,
                    maxLines: 5,
                    style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Read more"),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 90),
              padding: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    width: 3,
                    color: Colors.white,
                  )),
              child: Text(
                "Buy Tickets",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
