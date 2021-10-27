import 'package:flutter/material.dart';
import 'package:unilever_app/infrastructure/product/product_json.dart';

class HeroCarouselCard extends StatelessWidget {
  final Category? category;


   HeroCarouselCard({Key? key, this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration( 
    color : Colors.white,
    boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 5,
      blurRadius: 7,
      offset: const Offset(0, 3), // changes position of shadow
    ),
    ],),
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(
                  category!.imageUrl,
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                  height: double.infinity,
                  width: double.infinity),
            ],
          ),),
    );
  }
}
