import 'package:book_my_show/components/AppBarComp.dart';
import 'package:book_my_show/components/Movie.dart';
import 'package:book_my_show/components/TopBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BookMyShow extends StatelessWidget {
  const BookMyShow({Key? key}) : super(key: key);
  //create a function to return the component that we want to render
  _movies() {
    return (Column());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          title: const AppBarComp(),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TopBar(),
              Movie(
                name: "Avengers",
                language: "Hindi",
                image:
                    "https://collider.com/wp-content/uploads/the-avengers-movie-poster-banners-04.jpg",
                rating: "90%",
                votes: 7000,
                category: "U",
                view: "2D",
              ),
              Movie(
                  name: "Avengers",
                  language: "Hindi",
                  image:
                      "https://www.joblo.com/wp-content/uploads/2011/03/thor-poster-banner-1.jpg",
                  rating: "90%",
                  votes: 7000,
                  category: "U",
                  view: "2D"),
              Movie(
                  name: "Avengers",
                  language: "Hindi",
                  image:
                      "https://preview.redd.it/tg4l2g0pl1e81.jpg?auto=webp&s=c840adaf5949c12e173f6d753ae7369084900a9c",
                  rating: "90%",
                  votes: 7000,
                  category: "U",
                  view: "2D"),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 50,
          color: Colors.blueGrey[900],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              Icon(
                Icons.person,
                color: Colors.white,
              ),
            ],
          ),
        ));
  }
}
