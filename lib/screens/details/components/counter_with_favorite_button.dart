import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'cart_counter.dart';

class CounterWithFavoriteButton extends StatelessWidget {
  const CounterWithFavoriteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // or using space between 2 view
      children: [
        const CartCounter(),
        //Expanded(child: Container()),
        Container(
          padding: const EdgeInsets.all(8),
          width: 32,
          height: 32,
          decoration:const BoxDecoration(
              color: Color(0xFFFF6464),
              shape: BoxShape.circle
          ),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        )
      ],
    );
  }
}