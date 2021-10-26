import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:unilever_app/infrastructure/product/product_json.dart';
import 'package:unilever_app/presentation/presentation_export.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const String routeName = '/welcome';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const WelcomeScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          CarouselSlider(
            items: Category.categories
                .map((category) => HeroCarouselCard(category: category))
                .toList(),
              options: CarouselOptions(
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              autoPlay: false,
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              onPageChanged: (index, reason)
              {
                setState(() {
                  _current = index;
                  print("${_current}");
                });
              },
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
          ),
           Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: Category.categories.map((imageUrl) {     
            int index= Category.categories.indexOf(imageUrl);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(0, 0, 0, _current == index ? 0.9 : 0.4)
              ),
            );
          },
        ).toList(), // this was the part the I had to add
      ),
        ],
      ),
    );
  }
}