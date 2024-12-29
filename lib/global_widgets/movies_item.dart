import 'package:flutter/material.dart';

import '../constent/assets_path.dart';

class MoviesItem extends StatelessWidget {
  final String title;

  const MoviesItem({
    super.key, required this.title,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)),
                ),
                child: Image.asset( Assetspath.movieslist,
                  // width: 140,
                  // height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        Text(title,style: TextStyle(color: Colors.white),)
      ],
    );
  }
}