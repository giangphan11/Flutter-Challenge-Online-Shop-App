import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/models/Product.dart';
import 'package:onlineshop/screens/details/components/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final Product? product;
  const DetailsScreen({Key? key, this.product}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product!.color,
      appBar: AppBar(
        backgroundColor: product!.color,
        elevation: 0,
        leading: IconButton(onPressed: () => Navigator.pop(context),
            icon: SvgPicture.asset("assets/icons/back.svg",
              color: Colors.white,
            )
        ),
        actions: [
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/search.svg")),
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/cart.svg")),
          const SizedBox(width: kDefaultPadding/2)
        ],
      ),
      body: DetailsBody(product: product,),
    );
  }
}
