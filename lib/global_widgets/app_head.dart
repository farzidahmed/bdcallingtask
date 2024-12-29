import 'package:bdcallingtask/constent/assets_path.dart';
import 'package:flutter/material.dart';

class AppHead extends StatelessWidget {
  const AppHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello Rafsan",style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold,fontSize: 36),),
            Text("Let's Watch Today",style: TextStyle(color: Colors.grey,fontSize: 16),),
          ],
        ),
        CircleAvatar(
          maxRadius:28 ,
          child: Center(
              child: Image.asset(
                Assetspath.appcircluar,
                fit: BoxFit.fill,
                width: 200,
                height: 200,
              )),
        )
      ],
    );
  }
}