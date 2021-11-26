import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jaroo_app/indicator/news_page_view_content.dart';
import 'package:jaroo_app/indicator/news_page_view_indicator.dart';
import 'package:jaroo_app/indicator/page_view_content.dart';
import 'package:jaroo_app/indicator/page_view_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

late PageController _pageController;
int _currentPageIndex = 0;

class _NewsScreenState extends State<NewsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, '/menu_screen'),
          icon: const Icon(Icons.menu),
          color: Colors.white,
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       Navigator.pushReplacementNamed(context, '/menu_screen');
        //     },
        //     icon: const Icon(Icons.arrow_forward_ios_rounded),
        //     color: Colors.white,
        //   ),
        // ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 375,
            child: Stack(
              children: [
                PageView(
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      _currentPageIndex = value;
                    });
                  },
                  children: const [
                    NewsPageViewContent(),
                    NewsPageViewContent(),
                    NewsPageViewContent(),
                  ],
                ),
                PositionedDirectional(
                  bottom: 11.h,
                  start: 15.w,
                  child: Container(
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        NewsPageViewIndicator(
                            height: 8,
                            width: _currentPageIndex == 0 ? 20 : 8,
                            selected: _currentPageIndex == 0),
                        NewsPageViewIndicator(
                            height: 8,
                            width: _currentPageIndex == 1 ? 20 : 8,
                            selected: _currentPageIndex == 1),
                        NewsPageViewIndicator(
                            height: 8,
                            width: _currentPageIndex == 2 ? 20 : 8,
                            selected: _currentPageIndex == 2),
                      ],
                    ),
                  ),
                ),
                PositionedDirectional(
                  bottom: 9.h,
                  end: 16.w,
                  // width: 80,
                  // height: 20,
                  // margin: const EdgeInsets.only(
                  //   right: 16,
                  //   left: 340,
                  //   top: 343,
                  //   bottom: 9,
                  // ),
                  child: Text(
                    'AUG 30, 2018',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              children: [
                Text(
                  'Aliquam bibendum eleifend ante scelerisque porta',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Aenean porttitor tristique ipsum, eget egestas lorem pulvinar in. Nam idunt a nibh nec tempor. Maecenas condimentum purus ut dui rutrum facilisis. Nunc in cursus purus.Aenean porttitor tristique ipsum, eget egestaslorem pulvinar in. Nam idunt a nibh nec tempor. Maecenas condimentum purus ut dui rutrum facilisis. Nunc incursus purus.Aenean porttitor tristique ipsum, eget egestasNunc in cursus.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0XFFAAAAAA),
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: 15.w,
              end: 15.w,
              bottom: 15.h,
            ),
            child: DottedBorder(
              color: const Color(0XFFAAAAAA),
              child: SizedBox(
                width: double.infinity,
                height: 37,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'SHARE NOW:',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    // Image.asset('images/Group 333.png'),
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.facebook),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.instagram),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.whatsapp),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.twitter),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
