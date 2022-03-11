import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.translate_rounded,
                    size: 32,
                    color: Colors.greenAccent,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'All Languages',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              const Text("|",
                  style: TextStyle(fontSize: 22, color: Colors.grey)),
              Row(
                children: const [
                  Icon(
                    Icons.chair,
                    size: 32,
                    color: Colors.redAccent,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Cinemas',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
