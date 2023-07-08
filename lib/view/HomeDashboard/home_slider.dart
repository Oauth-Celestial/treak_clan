import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:treak_clan/view/HomeDashboard/home_card.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  final CarouselController _carouselController = CarouselController();
  int _current = 0;
  final List _movies = [];
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100,
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider(
        options: CarouselOptions(
          height: 500.0,
          aspectRatio: 16 / 9,
          viewportFraction: 0.75,
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          },
        ),
        carouselController: _carouselController,
        items: _movies.map((movie) {
          return Builder(
            builder: (BuildContext context) {
              return HomeCard(
                movie: movie,
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
