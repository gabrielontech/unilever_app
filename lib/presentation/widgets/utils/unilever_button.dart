import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String textButton;
  final Color textColor;
  final bool elevation;
  final Color? backgroundColor;
  final Color? borderSide;
  final double? height;
  final double? size;
  final String? routeName;
  
 const CustomButton({
    Key? key,
    this.routeName,
    required this.textButton,
    required this.textColor,
    required this.elevation,
    required this.backgroundColor,
    this.height,
    this.borderSide,
    this.size
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size ?? double.infinity,
      height: height ?? 50,
      child: OutlinedButton(
        onPressed: () { 
          if(routeName != null){Navigator.pushNamed(context, routeName!);}
 },
        child: Text(
          textButton,
          textAlign: TextAlign.center,
          style: TextStyle(color: textColor, fontSize: 15,),
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            width: borderSide == null ? 0 :  1,
            color: borderSide == null ? Colors.transparent : borderSide!,
            style: BorderStyle.solid,
          ),
          backgroundColor: backgroundColor,
          shadowColor: Colors.deepPurple[900],
          elevation: elevation == true ? 12 : 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9999)),
        ),
      ),
    );
  }
}