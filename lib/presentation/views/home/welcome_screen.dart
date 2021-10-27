import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unilever_app/application/bloc/on_boarding_dot_bloc.dart';
import 'package:unilever_app/infrastructure/product/product_json.dart';
import 'package:unilever_app/presentation/presentation_export.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const String routeName = '/welcome';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const WelcomeScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    int _current = 0;

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
      body: BlocBuilder<OnBoardingDotBloc, int>(
        builder: (context, state) {
          return ListView(
            children: [
              CarouselSlider(
                items: Category.categories
                    .map((category) => HeroCarouselCard(category: category))
                    .toList(),
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  onPageChanged: (index, reason) {
                    context.read<OnBoardingDotBloc>().add(AddIndex(index));
                    _current = state;
                    print(
                        "le current du bloc est a ${index} et le state a ${state}");
                  },
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: Category.categories.map(
                  (imageUrl) {
                    int index = Category.categories.indexOf(imageUrl);
                    print("l'index de comparaison est a  : ${index}");
                    print("le current de comparaison est a : ${_current}");
                    return Container(
                      width: 6.0,
                      height: 6.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? Color.fromRGBO(0, 0, 120, 0.9)
                              : Color.fromRGBO(0, 0, 0, 0.2)),
                    );
                  },
                ).toList(), // this was the part the I had to add
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                            flex: 2,
                            child: CustomButton(
                              textButton: "Offers",
                              textColor: principal,
                              elevation: false,
                              backgroundColor: Colors.transparent,
                              borderSide: principal,
                              height: 40,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                            flex: 4,
                            child: CustomButton(
                              textButton: "Recommanded",
                              textColor: Colors.white,
                              elevation: false,
                              backgroundColor: principal,
                              height: 40,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                            flex: 3,
                            child: CustomButton(
                                textButton: "Popular",
                                textColor: principal,
                                elevation: false,
                                backgroundColor: Colors.transparent,
                                borderSide: principal,
                                height: 40))
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text("Recommended",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 28)),
                        Spacer(),
                        Text(
                          "See All (26)",
                          style: TextStyle(
                              color: principal,
                              fontSize: 16,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}