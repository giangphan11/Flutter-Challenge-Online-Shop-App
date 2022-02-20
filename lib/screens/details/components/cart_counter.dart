import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {

  int numOfCount = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutLineButton(icon: Icons.remove, onPress: (){
          setState(() {
            if(numOfCount == 1){
              return;
            }else{
              numOfCount --;
            }
          });
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
          child: Text(
            numOfCount >9? '$numOfCount' : '0$numOfCount',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutLineButton(icon: Icons.add, onPress: (){
          setState(() => numOfCount ++);
        })
      ],
    );
  }

  SizedBox buildOutLineButton({required IconData icon,required VoidCallback onPress}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
              //side: BorderSide(width: 2, color: Colors.red),
            ),
            padding: EdgeInsets.zero
        ),
        onPressed: onPress,
        child: Icon(icon,),
      ),
    );
  }
}