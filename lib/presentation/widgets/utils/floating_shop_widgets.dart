import 'package:flutter/material.dart';
import 'package:unilever_app/presentation/presentation_export.dart';

class FloatingShoppingWidgets extends StatelessWidget {
  const FloatingShoppingWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: FloatingActionButton(
        elevation: 0,
        backgroundColor: Colors.white,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: RawMaterialButton(
              onPressed: () {},
              fillColor: principal,
              child: const Center(
                child: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30.0,
                ),
              ),
              shape: CircleBorder(),
            ),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}