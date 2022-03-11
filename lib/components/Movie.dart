import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Movie extends StatelessWidget {
  //create a constructor for the stateless widget

  String name;
  String image;
  String language;
  String rating;
  int votes;
  String category;
  String view;

  Movie(
      {required this.name,
      required this.image,
      required this.language,
      required this.rating,
      required this.votes,
      required this.category,
      required this.view});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1),
      ),
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.network(
                  image,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: 0,
                  child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.green,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child:
                            Text("NEW", style: TextStyle(color: Colors.white)),
                      ))),
              Positioned(
                  width: 340,
                  bottom: 20,
                  left: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black.withOpacity(0.5),
                              border: Border.all(
                                color: Colors.white38,
                                width: 2,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 9, vertical: 4),
                              child: Text(
                                category,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.thumb_up_alt_sharp,
                                      color: Colors.red, size: 20),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    child: Text(rating,
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18,
                                                color: Colors.white))),
                                  ),
                                ],
                              ),
                              Text(
                                "$votes votes",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.white)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.black))),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(language,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 15, color: Colors.black))),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(view,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 15, color: Colors.black))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red.shade800,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      )),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: Text("BOOK",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.white))),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
