import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/models/Product.dart';

class AddToCart extends StatelessWidget {
  final Product? product;

  const AddToCart({
    Key? key,
    this.product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: kDefaultPadding),
            width: 58,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                    color: product!.color!
                )
            ),
            child: IconButton(
              onPressed: (){},
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg",
                color: product!.color!,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                color: product!.color!,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                ),
                onPressed: (){},
                child: Text(
                  'Buy Now'.toUpperCase(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 17
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}