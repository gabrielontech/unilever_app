import 'package:flutter/material.dart';

class SeparatorChoice extends StatelessWidget {
  const SeparatorChoice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color textColor = Color(0xFFBDBDBD);
    return Row(

      children: [
        Container(
          width: 145,
          height: 0.7,
          color: textColor,
        ),
       const Text('    Or     ', style: TextStyle(color: textColor, fontSize: 15),),
        Container(
          width: 145,
          height: 0.7,
          color: textColor,
        ),
      ],
    );
  }
}