import 'package:flutter/material.dart';
import 'package:onlineshop/models/Product.dart';
import 'dot_widget.dart';
import 'package:onlineshop/constants.dart';

class ColorAndSize extends StatelessWidget {
  final Product? product;
  const ColorAndSize({
    Key? key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Color',
              ),
              Row(
                children: const [
                  ColorDot(color: Color(0xff056395)),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Size'),
              Text(
                '${product!.size!}cm',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: kTextColor, fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }
}
