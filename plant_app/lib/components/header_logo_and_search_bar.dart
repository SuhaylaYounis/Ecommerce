import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class HeaderLogoAndSearchBar extends StatelessWidget {
  const HeaderLogoAndSearchBar ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //to get the height and width of the screen
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding*2.5),
      //the height of the container will be 20% of the actual height
      height: size.height * 0.2,
      //to add multiple layers onto the screen
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left:kDefaultPadding,
              right:kDefaultPadding,
              bottom: 66,
            ),
            height: size.height * 0.19,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(54),
                  bottomRight: Radius.circular(54)),
            ),
            child: Row(
              children: [
                Text('Hi Uishopy!', style:Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white,fontWeight:FontWeight.bold ),
                ),
                const Spacer(),
                Image.asset("assets/images/logo.png"),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              //spacing from outside
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              //spacing from inside
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              alignment: Alignment.center,
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              //to add the search word
              child: Row(children: [
                Expanded(
                  child: TextField(

                    onChanged:(value){},
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: kPrimaryColor.withOpacity(0.5),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      // suffixIcon:
                    ),
                  ),
                ),
                SvgPicture.asset("assets/icons/search (1).svg"),
              ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
