import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {


  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobileLarge;
  final Widget? mobile;


  Responsive({this.desktop, this.tablet, this.mobileLarge, this.mobile});

  static bool isDesktop(BuildContext context){

    return MediaQuery.of(context).size.width >1024 ;
  }

  static bool isTablet(BuildContext context){

    return MediaQuery.of(context).size.width <=1024  ;
  }

  static bool isMobileLarge(BuildContext context){

    return MediaQuery.of(context).size.width <= 850 ;
  }

  static bool isMobile(BuildContext context){

    return MediaQuery.of(context).size.width <= 650 ;
  }


  @override
  Widget build(BuildContext context) {

    Size size =MediaQuery.of(context).size;

    if (size.width> 1024 ){
      return desktop!;
    } else  if (size.width <= 1024 && tablet!=null && size.width > 850){
      return tablet!;
    } else  if (size.width <= 700 && mobileLarge!=null && size.width > 650){
      return mobileLarge!;
    } else if  (size.width <= 650 && mobileLarge!=null ){
      return mobile!;
    }else{
      return mobile!;
    }



  }
}