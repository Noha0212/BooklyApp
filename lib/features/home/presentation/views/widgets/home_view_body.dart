import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
//import 'package:carousel_slider/carousel_slider.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedListView(),
      ],
    );
  }
}

/*class CarouelSliderWidget extends StatelessWidget {
  const CarouelSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: 5,
        options: CarouselOptions(
          autoPlay: false,
          viewportFraction: 0.3,
          enlargeCenterPage: true,
          pageSnapping: true,
        ),
        itemBuilder: (context, index, realIndex) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}*/

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FeaturedListViewItem(),
            );
          },
        ),
      ),
    );
  }
}
