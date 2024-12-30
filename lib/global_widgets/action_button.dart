import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color:  Color.fromRGBO(255, 52, 64, 100),
              borderRadius: BorderRadius.circular(16)
          ),
          child: Center(child: Text("All",style: TextStyle(color: Colors.white),)),
        ),
        Container(
          height: 50,
          width: 80,
          decoration: BoxDecoration(
              color:  Color.fromRGBO(34, 24, 33, 100),
              borderRadius: BorderRadius.circular(16)
          ),
          child: Center(child: Text("Action",style: TextStyle(color: Colors.white),)),
        ),
        Container(
          height: 50,
          width: 80,
          decoration: BoxDecoration(
              color:  Color.fromRGBO(34, 24, 33, 100),
              borderRadius: BorderRadius.circular(16)
          ),
          child: Center(child: Text("Anime",style: TextStyle(color: Colors.white),)),
        ),
        Container(
          height: 50,
          width: 80,
          decoration: BoxDecoration(
              color:  Color.fromRGBO(34, 24, 33, 100),
              borderRadius: BorderRadius.circular(16)
          ),
          child: Center(child: Text("Sci-fi",style: TextStyle(color: Colors.white),)),
        ),
        Container(
          height: 50,
          width: 80,
          decoration: BoxDecoration(
              color:  Color.fromRGBO(34, 24, 33, 100),
              borderRadius: BorderRadius.circular(16)
          ),
          child: Center(child: Text("Thiller",style: TextStyle(color: Colors.white),)),
        ),
      ],
    );
  }
}
