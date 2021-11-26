import 'package:flutter/material.dart';

class NewsPageViewContent extends StatefulWidget {
  const NewsPageViewContent({Key? key}) : super(key: key);

  @override
  _NewsPageViewContentState createState() => _NewsPageViewContentState();
}

class _NewsPageViewContentState extends State<NewsPageViewContent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image.network(
        //     'https://www.skullcandy.eu/content/pdp_images/4256_9449.jpg',
        // fit: BoxFit.fill,
        // width: double.infinity,
        // ),
        Image.asset(
          'images/bg.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
