import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:jaroo_app/indicator/page_view_content.dart';
import 'package:jaroo_app/indicator/page_view_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

late PageController _pageController;

// const IconData double_arrow = IconData(0xe1ff, fontFamily: 'MaterialIcons');
int _currentPageIndex = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 1.0);
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
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'HOME',
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
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       Navigator.pushReplacementNamed(context, '/news_screen');
        //     },
        //     icon: const Icon(Icons.search),
        //     color: const Color(0XFF111111),
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 340.h,
                child: PageView(
                  controller: _pageController,
                  padEnds: false,
                  pageSnapping: false,
                  onPageChanged: (value) {
                    setState(() {
                      _currentPageIndex = value;
                    });
                  },
                  children: const [
                    page_view_content(),
                    page_view_content(),
                    page_view_content(),
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PageViewIndicator(
                      height: 8.h,
                      width: _currentPageIndex == 0 ? 20.w : 8.w,
                      selected: _currentPageIndex == 0),
                  PageViewIndicator(
                      height: 8.h,
                      width: _currentPageIndex == 1 ? 20.w : 8.w,
                      selected: _currentPageIndex == 1),
                  PageViewIndicator(
                      height: 8.h,
                      width: _currentPageIndex == 2 ? 20.w : 8.w,
                      selected: _currentPageIndex == 2),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  children: [
                    Text(
                      'CATEGORIES',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'MORE',
                      style: TextStyle(
                        color: Color(0XFF111111),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/categories_screen', (route) => false);
                      },
                      icon: const Icon(
                        Icons.double_arrow_outlined,
                        color: Color(0XFF075AAA),
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              // const SizedBox(height: 10),
              SizedBox(
                height: 114.h,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    childAspectRatio: 114.h / 106.w,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          width: 106.w,
                          height: 114.h,
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.only(bottom: 44.h),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color(0XFF075AAA),
                            ),
                          ),
                          child: Image.asset(
                            'images/c1.png',
                            width: 65.w,
                            height: 65.h,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: 106.w,
                            height: 31.h,
                            decoration: BoxDecoration(
                              color: const Color(0XFF075AAA),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: const Color(0XFF075AAA),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Sound System',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                child: Row(
                  children: [
                    const Text(
                      'RECENT NEWS',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'MORE',
                      style: TextStyle(
                        color: Color(0XFF111111),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, 'news_screen');
                      },
                      icon: const Icon(
                        Icons.double_arrow_outlined,
                        color: Color(0XFF075AAA),
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200.h,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 176 / 306,
                  ),
                  itemBuilder: (context, index) {
                    //'images/amazon.png'
                    return SizedBox(
                      width: 306.w,
                      height: 171.h,
                      child: Stack(
                        children: [
                          Image.asset('images/amazon.png'),
                          Container(
                            margin: EdgeInsetsDirectional.only(
                              start: 250.w,
                              top: 117.h,
                            ),
                            alignment: Alignment.center,
                            width: 35.w,
                            height: 40.h,
                            decoration: const BoxDecoration(
                              color: Color(0XFF979A9A),
                              borderRadius: BorderRadiusDirectional.only(
                                topStart: Radius.circular(70),
                                bottomEnd: Radius.circular(20),
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, 'news_screen');
                              },
                              icon: const Icon(
                                Icons.double_arrow_outlined,
                                size: 28,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    const Text(
                      'LATEST PRODUCTS',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'MORE',
                      style: TextStyle(
                        color: Color(0XFF111111),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, 'products_screen');
                      },
                      icon: const Icon(
                        Icons.double_arrow_outlined,
                        color: Color(0XFF075AAA),
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: GridView.builder(
                  // scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  padding: const EdgeInsets.all(0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                    childAspectRatio: 167 / 167,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      clipBehavior: Clip.hardEdge,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        image: DecorationImage(
                          image: AssetImage('images/sound-pro5.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                '100',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                '₪',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Color(0XFFC60303),
                                  fontFamily: 'Roboto',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(
                                width: 19,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10.7,
                          ),
                          Row(
                            children: const [
                              SizedBox(
                                width: 12,
                              ),
                              SizedBox(
                                width: 140,
                                height: 34,
                                child: Text(
                                  'ALIQUAM BIBENDUM AMAZO',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Roboto',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
