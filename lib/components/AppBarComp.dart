import 'package:flutter/material.dart';

class AppBarComp extends StatelessWidget {
  const AppBarComp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu_sharp,
            color: Colors.white,
          ),
          Row(
            children: [
              Container(
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "NOW SHOWING",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.red[400],
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              Container(
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "COMING SOON",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ],
          ),
          const Icon(
            Icons.location_on,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
