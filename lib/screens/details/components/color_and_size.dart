import 'package:flutter/material.dart';
import 'package:onlineshop/models/Product.dart';
import 'dot_widget.dart';
import 'package:onlineshop/constants.dart';

class ColorAndSize extends StatefulWidget {
  final Product? product;
  const ColorAndSize({
    Key? key,
    this.product,
  }) : super(key: key);

  @override
  State<ColorAndSize> createState() => _ColorAndSizeState();
}

class _ColorAndSizeState extends State<ColorAndSize> {
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
              SizedBox(
                width: 100,
                height: 35,
                child: ListView.builder(
                  itemCount: widget.product!.listDetailColor!.length,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: (){
                      // setState(() {
                      //   widget.product!.listDetailColor![index].isSelected = !widget.product!.listDetailColor![index].isSelected;
                      // });
                    },
                    child: ColorDot(color: widget.product!.listDetailColor![index].color,isSelected: widget.product!.listDetailColor![index].isSelected,))),
              )
              // SizedBox(
              //   width: 60,
              //   child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: product!.listDetailColor!.length,
              //       itemBuilder: (context, index){
              //         return ColorDot(color: product!.listDetailColor![index].color);
              //   }),
              // )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Size'),
              Text(
                '${widget.product!.size!}cm',
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
