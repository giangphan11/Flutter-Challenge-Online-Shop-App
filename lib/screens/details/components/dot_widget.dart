import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';


class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    // default param
    this.color = const Color(0xff056395),
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: kIconSize,
        height: kIconSize,
        margin: const EdgeInsets.only(top: kDefaultPadding/4, right: kDefaultPadding/2),
        padding: const EdgeInsets.all(2.5),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: isSelected? color : Colors.transparent)
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color
          ),
        )
    );
  }
}