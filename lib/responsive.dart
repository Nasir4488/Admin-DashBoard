import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const Responsive({Key? key,
    required this.desktop,
    required this.mobile,
    required this.tablet
  }) : super(key: key);


  //for mobile
  static bool isMobile(BuildContext context)
  =>MediaQuery.of(context).size.width<850;
  //for tablet
  static bool isTablet(BuildContext context)
  =>MediaQuery.of(context).size.width>=850 &&
      MediaQuery.of(context).size.width<1100;
  //Desktop
  static bool isDesktop(BuildContext context)
  =>MediaQuery.of(context).size.width>=1100;

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    if(size.width>1100){
      return desktop;
    }
    else if(size.width>=850 &&size.width<1100){
      return tablet;
    }
    else{
      return mobile;
    }
  }
}
