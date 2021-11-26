import 'package:flutter/material.dart';

class PageViewIndicator extends StatelessWidget {
  const PageViewIndicator({
    required this.height,
    required this.width,
    this.selected = false,
    Key? key,
  }) : super(key: key);

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
        border: Border.all(color: const Color(0XFF075AAA)),
        // color: Color(0XFF075AAA),
        color: selected? const Color(0XFF075AAA): Colors.white,
        borderRadius: BorderRadius.circular(150),
      ),
    );
    //return TabPageSelectorIndicator(backgroundColor: selected ? Color(0XFF075AAA): Colors.white, borderColor: Color(0XFF075AAA), size: 8);
  }
}
