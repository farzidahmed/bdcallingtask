import 'package:bdcallingtask/constent/app_color.dart';
import 'package:bdcallingtask/views/screens/api_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../global_widgets/action_button.dart';
import '../../global_widgets/app_head.dart';
import '../../global_widgets/continue_movies.dart';
import '../../global_widgets/home_carousel_silder.dart';
import '../../global_widgets/home_section.dart';
import '../../global_widgets/movies_item.dart';
import '../../global_widgets/searchbar.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: AppColors.appcolor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
               const AppHead(),
                const SizedBox(height: 16,),
            const Searbar(),
                const SizedBox(height: 16,),
                HomeSectionHeader(title: 'Category', ontap: () {
                  Get.to(ApiScreen());
                },),
                const SizedBox(height: 16,),
                const ActionButton(),
                const SizedBox(height: 16,),
                const Home_Carousel_Slider(),
                const SizedBox(height: 16,),
                HomeSectionHeader(title: 'Trending Movies', ontap: () {  },),
                const SizedBox(height: 16,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: _getmoviesitem(),
                  ),
                ),
                const SizedBox(height: 16,),
                HomeSectionHeader(title: 'Continue watching', ontap: () {  },),
                const SizedBox(height: 16,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: _getcontinuemovies(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  List<Widget> _getmoviesitem() {
    List<Widget> moviesitem = [];
    for (int i = 0; i < 5; i++) {
      moviesitem.add(const Padding(
        padding: EdgeInsets.only(right: 8),
        child:  MoviesItem(title: 'soul mates',),
      ));
    }
    return moviesitem;
  }
  List<Widget> _getcontinuemovies() {
    List<Widget> moviesitem = [];
    for (int i = 0; i < 5; i++) {
      moviesitem.add(const Padding(
        padding: EdgeInsets.only(right: 8),
        child:  ContinueMovies(title: 'soul mates',),
      ));
    }
    return moviesitem;
  }
}







