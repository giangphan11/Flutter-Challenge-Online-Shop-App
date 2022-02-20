import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:onlineshop/models/Product.dart';
import 'package:onlineshop/constants.dart';
import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'counter_with_favorite_button.dart';
import 'desciption.dart';
import 'product_title_with_image.dart';

class DetailsBody extends StatelessWidget {
  final Product? product;

  const DetailsBody({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                buildContainer(context, size, product),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Container buildContainer(BuildContext context, Size size, Product? product){
  return Container(
    margin: EdgeInsets.only(top: size.height * 0.36),
    padding: EdgeInsets.only(top: size.height * 0.12, left: kDefaultPadding, right: kDefaultPadding),
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kBorderRadiusMain),
            topRight: Radius.circular(kBorderRadiusMain)
        )
    ),
    child: Column(
      children: [
        ColorAndSize(product: product,),
        const SizedBox(height: kDefaultPadding/2,),
        DetailsDescription(product: product,),
        const CounterWithFavoriteButton(),
        AddToCart(product: product,)
      ],
    ),
  );
}
