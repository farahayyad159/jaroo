import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ABOUT',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => print('We are here'),
          icon: const Icon(Icons.menu),
          color:  Colors.white,
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.arrow_forward_ios_rounded),
        //     color: Colors.white,
        //   ),
        // ],
      ),
      // body: Container(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage('images/lamp.png'),
      //       fit: BoxFit.cover
      //     ),
      //   ),
      // ),
      body: Stack(
        children: [
          Image.asset(
            'images/lamp.png',
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
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                  top: 91,
                  bottom: 486,
                  right: 81,
                  left: 105,
                ),
                width: 212,
                height: 90,
                // color: Colors.white,
                child: SvgPicture.asset(
                  'images/wihte-logo.svg',
                  height: 90,
                  width: 212,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 213,
                  bottom: 305,
                  right: 18,
                  left: 18,
                ),
                child: const Text(
                  'Aenean porttitor tristique ipsum, eget egestas lorem pulvinar in. Nam idunt a nibh nec tempor. Maecenas condimentum purus ut dui rutrum facilisis. Nunc in cursus purus.Aenean porttitor tristique ipsum, eget egestas lorem pulvinar in. Nam idunt a nibh nec tempor. Maecenas condimentum purus ut dui rutrum facilisis. Nunc in cursus purus.Aenean porttitor tristique ipsum, eget egestas Nunc in cursus.',
                  style: TextStyle(
                      fontSize: 12, fontFamily: 'Roboto', color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 61,
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 342,
                  left: 31,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ListView(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 18,
                          ),
                          width: index == 0 ? 147 : 104,
                          height: index == 0 ? 178 : 127,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                'images/manager.png',
                              ),
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color(0XFF075AAA),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Ahmed Bassam',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          'Manger & CEO',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFFB3B3B3),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
