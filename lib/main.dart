import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jaroo_app/screens/about_screen.dart';
import 'package:jaroo_app/screens/categories_screen.dart';
import 'package:jaroo_app/screens/contact_screen.dart';
import 'package:jaroo_app/screens/home_screen.dart';
import 'package:jaroo_app/screens/menu_screen.dart';
import 'package:jaroo_app/screens/news_background_screen.dart';
import 'package:jaroo_app/screens/news_screen.dart';
import 'package:jaroo_app/screens/products_screen.dart';
import 'package:jaroo_app/screens/speakers_screen.dart';
import 'package:jaroo_app/screens/splash_screen.dart';
import 'package:jaroo_app/tabs/sound_system_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 667),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/splash_screen',
        routes: {
          '/splash_screen': (context) => const SplashScreen(),
          '/home_screen': (context) => const HomeScreen(),
          '/products_screen': (context) => const ProductsScreen(),
          '/sound_system_screen': (context) => const SoundSystemScreen(),
          '/news_background_screen': (context) => const NewsBackGroundScreen(),
          '/speakers_screen': (context) => const SpeakersScreen(),
          '/news_screen': (context) => const NewsScreen(),
          '/menu_screen': (context) => const MenuScreen(),
          '/about_screen': (context) => const AboutScreen(),
          '/contact_screen': (context) => const ContactScreen(),
          '/categories_screen': (context) => const CategoriesScreen(),
        },
      ),
    );
  }
}
