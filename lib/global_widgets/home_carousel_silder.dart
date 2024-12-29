import 'package:bdcallingtask/constent/assets_path.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constent/app_color.dart';

class Home_Carousel_Slider extends StatefulWidget {
  const Home_Carousel_Slider({
    super.key,
  });

  @override
  State<Home_Carousel_Slider> createState() => _Home_Carousel_SliderState();
}
class _Home_Carousel_SliderState extends State<Home_Carousel_Slider> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 180,
            viewportFraction: 0.9,
            onPageChanged: (currentIndex, reason) {
              _selectedIndex.value = currentIndex;
            },
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: AppColors.appcolor,
                        borderRadius: BorderRadius.circular(16)),
                    alignment: Alignment.center,
                    child: Image.asset(Assetspath.silder,fit: BoxFit.cover,));
              },
            );
          }).toList(),
        ),
        SizedBox(height: 16,),
        ValueListenableBuilder(
            valueListenable: _selectedIndex,
            builder: (context, value,_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for(int i=0;i<5;i++)
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: value==i?Colors.white
                              : Colors.transparent ,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey)
                      ),
                    )
                ],
              );
            }
        )

      ],
    );

  }
}