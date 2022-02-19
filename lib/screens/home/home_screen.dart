import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlineshop/constants.dart';

import 'components/body.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
        }, icon: SvgPicture.asset(
            "assets/icons/back.svg",
            semanticsLabel: 'Acme Logo'
        )
        ),
        actions: [
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/search.svg", color: kTextColor,)),
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/cart.svg", color: kTextColor,)),
          const SizedBox(width: kDefaultPadding/2,),
        ],
      ),
      body: const Body()
    );
  }
}
