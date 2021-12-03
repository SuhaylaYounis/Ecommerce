
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/components/body.dart';
import 'package:plant_app/constants.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading:IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/menu (1).svg")
        ),
      ),

      body: Body(),
    );
  }
}
