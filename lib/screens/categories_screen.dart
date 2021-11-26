import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'CATEGORIES',
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
          onPressed: () => Navigator.pushNamed(context, '/menu_screen'),
          icon: const Icon(Icons.menu),
          color: const Color(0XFF111111),
        ),
      ),
      body: GridView.builder(
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
      ),
    );
  }
}
