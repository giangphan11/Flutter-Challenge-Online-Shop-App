import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onlineshop/models/Product.dart';
import 'package:onlineshop/constants.dart';
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
                buildContainer(context, size),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Container buildContainer(BuildContext context, Size size){
  return Container(
    margin: EdgeInsets.only(top: size.height * 0.36),
    height: 450,
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kBorderRadiusMain),
            topRight: Radius.circular(kBorderRadiusMain)
        )
    ),
  );
}
