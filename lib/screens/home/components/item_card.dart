import 'package:flutter/material.dart';
import 'package:onlineshop/models/Product.dart';
import 'package:onlineshop/constants.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final VoidCallback? press;



  const ItemCard({Key? key, this.product, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              // for demo we use fixed height and width
              // now we don't need them
              // width: 160,
              // height: 180,
              decoration: BoxDecoration(
                  color: product!.color,
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Image.asset(product!.image!),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/4),
            child: Text(
              product!.title!,
              style: const TextStyle(
                  color: kTextColor
              ),
            ),
          ),
          Text(
            "\$${product!.price}",
            style: const TextStyle(
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}