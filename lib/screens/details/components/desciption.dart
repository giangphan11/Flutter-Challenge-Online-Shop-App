import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/models/Product.dart';

class DetailsDescription extends StatelessWidget {
  final Product? product;
  const DetailsDescription({
    Key? key,
    this.product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        product!.description!,
        style: const TextStyle(
            height: 1.5
        ),
      ),
    );
  }
}