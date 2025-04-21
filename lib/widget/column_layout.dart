import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const AppColumnLayout({super.key, required this.firstText, required this.secondText, required this.alignment, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,style:isColor==null? Styles.headingLineStyle3
            .copyWith(color: Colors.white):Styles.headingLineStyle3,),//'Flutter DB'
        Gap(5),
        Text(secondText,style:isColor==null? Styles.headingLineStyle4
            .copyWith(color: Colors.white):Styles.headingLineStyle4),//'Passenger'
      ],
    );
  }
}
