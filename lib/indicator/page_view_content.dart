import 'package:flutter/material.dart';

class page_view_content extends StatefulWidget {
  const page_view_content({
    Key? key,
  }) : super(key: key);

  @override
  State<page_view_content> createState() => _page_view_contentState();
}

class _page_view_contentState extends State<page_view_content> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        'images/bg.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
