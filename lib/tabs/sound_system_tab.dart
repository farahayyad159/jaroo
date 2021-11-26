import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SoundSystemScreen extends StatefulWidget {
  const SoundSystemScreen({Key? key}) : super(key: key);

  @override
  _SoundSystemScreenState createState() => _SoundSystemScreenState();
}

class _SoundSystemScreenState extends State<SoundSystemScreen> {
  @override
  Widget build(BuildContext context) {
    // return GridView(
    //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 21.9),
    //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2,
    //     crossAxisSpacing: 0,
    //     mainAxisSpacing: 8,
    //     childAspectRatio: 167 / 167,
    //     // mainAxisExtent: 0,
    //   ),
    //   children: [
    //     Container(
    //       padding: EdgeInsets.all(0),
    //       alignment: Alignment.center,
    //       decoration: const BoxDecoration(
    //         image: DecorationImage(
    //           image: AssetImage('images/sound-pro1.png'),
    //         ),
    //       ),
    //       child: const Text(
    //         'SPEAKERS',
    //         style: TextStyle(
    //           color: Colors.white,
    //           fontFamily: 'Roboto',
    //           fontSize: 16,
    //           fontWeight: FontWeight.w500,
    //         ),
    //       ),
    //     ),
    //     Container(
    //       padding: EdgeInsets.all(0),
    //       alignment: Alignment.center,
    //       decoration: const BoxDecoration(
    //         image: DecorationImage(
    //           image: AssetImage('images/sound-pro1.png'),
    //         ),
    //       ),
    //       child: const Text(
    //         'SPEAKERS',
    //         style: TextStyle(
    //           color: Colors.white,
    //           fontFamily: 'Roboto',
    //           fontSize: 16,
    //           fontWeight: FontWeight.w500,
    //         ),
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       decoration: const BoxDecoration(
    //         image: DecorationImage(
    //           image: AssetImage('images/sound-pro1.png'),
    //         ),
    //       ),
    //       child: const Text(
    //         'SPEAKERS',
    //         style: TextStyle(
    //           color: Colors.white,
    //           fontFamily: 'Roboto',
    //           fontSize: 16,
    //           fontWeight: FontWeight.w500,
    //         ),
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       decoration: const BoxDecoration(
    //         image: DecorationImage(
    //           image: AssetImage('images/sound-pro1.png'),
    //         ),
    //       ),
    //       child: const Text(
    //         'SPEAKERS',
    //         style: TextStyle(
    //           color: Colors.white,
    //           fontFamily: 'Roboto',
    //           fontSize: 16,
    //           fontWeight: FontWeight.w500,
    //         ),
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       decoration: const BoxDecoration(
    //         image: DecorationImage(
    //           image: AssetImage('images/sound-pro1.png'),
    //         ),
    //       ),
    //       child: const Text(
    //         'SPEAKERS',
    //         style: TextStyle(
    //           color: Colors.white,
    //           fontFamily: 'Roboto',
    //           fontSize: 16,
    //           fontWeight: FontWeight.w500,
    //         ),
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       decoration: const BoxDecoration(
    //         image: DecorationImage(
    //           image: AssetImage('images/sound-pro1.png'),
    //         ),
    //       ),
    //       child: const Text(
    //         'SPEAKERS',
    //         style: TextStyle(
    //           color: Colors.white,
    //           fontFamily: 'Roboto',
    //           fontSize: 16,
    //           fontWeight: FontWeight.w500,
    //         ),
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       decoration: const BoxDecoration(
    //         image: DecorationImage(
    //           image: AssetImage('images/sound-pro1.png'),
    //         ),
    //       ),
    //       child: const Text(
    //         'SPEAKERS',
    //         style: TextStyle(
    //           color: Colors.white,
    //           fontFamily: 'Roboto',
    //           fontSize: 16,
    //           fontWeight: FontWeight.w500,
    //         ),
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       decoration: const BoxDecoration(
    //         image: DecorationImage(
    //           image: AssetImage('images/sound-pro1.png'),
    //         ),
    //       ),
    //       child: const Text(
    //         'SPEAKERS',
    //         style: TextStyle(
    //           color: Colors.white,
    //           fontFamily: 'Roboto',
    //           fontSize: 16,
    //           fontWeight: FontWeight.w500,
    //         ),
    //       ),
    //     ),
    //   ],
    // );
    return GridView.builder(
      itemCount: 8,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 21.9.h),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 167 / 167,
      ),
      itemBuilder: (context, index) {
        return Container(
          // padding: const EdgeInsets.all(0),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            // color: Colors.red,
            image: DecorationImage(
              image: AssetImage('images/sound-pro1.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: const Text(
            'SPEAKERS',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      },
    );
  }
}
