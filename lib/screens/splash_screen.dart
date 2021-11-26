import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        // constraints: BoxConstraints.expand(),
        child: Stack(
          children: [
            Image.asset(
              'images/girl.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fitHeight,
            ),
            Image.asset(
              'images/background.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
            Positioned(
              left: 98,
              right: 97,
              top: 192,
              bottom: 399,
              child: Container(
                width: 200,
                height: 180,
                child: SvgPicture.asset(
                  'images/wihte-logo.svg',
                  // height: 76,
                  // width: 180,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
