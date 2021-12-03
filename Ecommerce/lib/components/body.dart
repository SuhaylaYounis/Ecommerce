import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import '../constants.dart';
import'header_logo_and_search_bar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Enables scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: const [
          HeaderLogoAndSearchBar(),
        ],
      ),
    );
  }
}
