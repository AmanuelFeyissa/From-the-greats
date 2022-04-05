import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  late Color? color;
  late Image? image;
  late Function()? onPressed;

  CommonCard({@required this.color, this.image, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        child: image,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
      ),
    );
  }
}
