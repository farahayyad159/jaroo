import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Colors.black,
          ),
          // color: Colors.white,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/bg.png'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 118,
                left: 109,
                right: 108,
                bottom: 76,
              ),
              child: SvgPicture.asset(
                'images/wihte-logo.svg',
                // height: 76,
                // width: 180,
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/home_screen', (route) => false),
              child: const Text(
                'HOME',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            TextButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/news_screen', (route) => false),
              child: const Text(
                'NEWS',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            TextButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/products_screen', (route) => false),
              child: const Text(
                'PRODUCTS',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            // TextButton(
            //   onPressed: () {},
            //   child: const Text(
            //     'GALLERY',
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontFamily: 'Roboto',
            //         fontSize: 20,
            //         fontWeight: FontWeight.w500),
            //   ),
            // ),
            // const SizedBox(
            //   height: 33,
            // ),
            TextButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/about_screen', (route) => false),
              child: const Text(
                'ABOUT US',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            TextButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/contact_screen', (route) => false),
              child: const Text(
                'CONTACT US',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
