import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:food_me/config/appColor.dart';

import '../../widgets/customDescoverDetails.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> promotionImages = [
      'banner.png',
      'image2.jpg',
      'image3.jpg',
    ]; // Remplacez les noms d'images par les vôtres

    return Scaffold(
      appBar: AppBar(
        title: Text("Discover"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 120,
                aspectRatio: 16 / 9,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
              items: promotionImages.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/images/banner.png'), // Remplacez le chemin par votre répertoire d'images
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Nearby',
              style: TextStyle(
                  color: AppColor.primaryBlue,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Tajawal'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, int index) {
                  return CustomDiscoverDetails();
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Recommended for you',
              style: TextStyle(
                  color: AppColor.primaryBlue,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Tajawal'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, int index) {
                  return CustomDiscoverDetails();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
