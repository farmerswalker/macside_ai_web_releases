import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    required this.text,
    this.fontWeight = FontWeight.bold,
    this.color = Colors.black,
    this.size,
    this.maxLine,
    this.overFlow,
    this.textAlign,
    this.height = 1.3,
    this.softWrap = true,
    super.key,
  });
  final String text;
  final FontWeight fontWeight;
  final Color color;
  final double? size;
  final int? maxLine;
  final TextOverflow? overFlow;
  final TextAlign? textAlign;
  final double height;
  final bool softWrap;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      overflow: overFlow,
      textAlign: textAlign,
      style: GoogleFonts.mPlus1(
        height: height,
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
        decoration: TextDecoration.none,
      ),
      softWrap: softWrap,
    );
  }
}
