import 'package:flutter/material.dart';

class SpeakersScreen extends StatefulWidget {
  const SpeakersScreen({Key? key}) : super(key: key);

  @override
  _SpeakersScreenState createState() => _SpeakersScreenState();
}

class _SpeakersScreenState extends State<SpeakersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'SPEAKERS',
          style: TextStyle(
            color: Color(0XFF111111),
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () =>
              Navigator.pushNamed(context, '/menu_screen'),
          icon: const Icon(Icons.menu),
          color: const Color(0XFF111111),
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.search),
        //     color: const Color(0XFF111111),
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: ListView.builder(
          // padding: EdgeInsets.symmetric(horizontal: 0),
          itemCount: 4,
          itemBuilder: (context, index) {
            bool even = true;

            return SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset(
                    'images/group.png',
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(
                      top: 28.2,
                      end: (even = index % 2 == 0) ? 22 : 131,
                      start: (even = index % 2 == 0) ? 193 : 34,
                      bottom: 74,
                    ),
                    width: 160,
                    height: 65,
                    child: const Text(
                      'Beats Solo3 Wireless',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(
                      top: 110,
                      start: (even = index % 2 == 0) ? 350 : 20,
                      end: (even = index % 2 == 0) ? 11 : 334,
                      // bottom: 10,
                    ),
                    // width: 30,
                    // height: 92,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.double_arrow_rounded),
                      color: Colors.white,
                      iconSize: 49,
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 127,
                    // color: Colors.black,
                    margin: EdgeInsetsDirectional.only(
                      top: 20,
                      start: (even = index % 2 == 0) ? 20 : 350,
                      end: (even = index % 2 == 0) ? 334 : 11,
                      bottom: 20,
                    ),
                    // decoration: const BoxDecoration(
                    //   // color: Colors.black,
                    //   image: DecorationImage(
                    //     image: AssetImage(
                    //       'images.c1.png',
                    //     ),
                    //   ),
                    // ),
                    child: Image.asset(
                      'images/headphones.png',
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
