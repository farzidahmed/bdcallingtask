import 'package:flutter/material.dart';

import '../constent/app_color.dart';

class Searbar extends StatelessWidget {
  const Searbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 320,
          child: TextField(
            //controller: controller,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                enabledBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(24)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                hintText: "Search",
                hintStyle: TextStyle(
                    color: Colors.grey.shade100
                ),
                suffixIcon: Icon(Icons.search,color: Colors.grey.shade100,),

                fillColor: AppColors.appcolor,
                filled: true
            ),
          ),
        ),
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color.fromRGBO(255, 52, 64, 100),
          ),
          child: Icon(Icons.density_large_sharp,color: Colors.white,),
        )
      ],
    );
  }
}