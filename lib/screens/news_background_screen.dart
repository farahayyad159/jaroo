import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsBackGroundScreen extends StatefulWidget {
  const NewsBackGroundScreen({Key? key}) : super(key: key);

  @override
  _NewsBackGroundScreenState createState() => _NewsBackGroundScreenState();
}

class _NewsBackGroundScreenState extends State<NewsBackGroundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.blue,
        child: Stack(
            children: [
              Image.asset(
                'images/s1.png',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/s2.png',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              // SvgPicture.asset(
              //   'images/s1.svg',
              //   height: double.infinity,
              //   width: double.infinity,
              //   fit: BoxFit.cover,
              // ),

            ],
          ),
      ),
    );
  }
}
