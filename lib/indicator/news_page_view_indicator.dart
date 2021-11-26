import 'package:flutter/material.dart';

class NewsPageViewIndicator extends StatelessWidget {
  const NewsPageViewIndicator(
      {required this.height,
      required this.width,
      this.selected = false,
      Key? key})
      : super(key: key);

  final double height;
  final double width;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 5),
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        // color: Color(0XFF075AAA),
        color: selected ? const Color(0XFFC60303) : Colors.white,
        borderRadius: BorderRadius.circular(150),
      ),
    );
  }
}
