import 'package:flutter/material.dart';
import 'package:jaroo_app/tabs/sound_system_tab.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'PRODUCTS',
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
        //     onPressed: () {
        //       Navigator.pushNamed(context, '/news_screen');
        //     },
        //     icon: const Icon(Icons.arrow_forward_ios_rounded),
        //     color: const Color(0XFF111111),
        //   ),
        // ],
        bottom: TabBar(
          controller: _tabController,
          onTap: (int value) {
            setState(() {
              index = value;
            });
          },
          padding: const EdgeInsets.symmetric(horizontal: 16),
          tabs: [
            Tab(
              child: Container(
                child: const Text('Musics'),
                // width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                height: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color:
                          index == 0 ? const Color(0XFF075AAA) : Colors.black,
                      width: 1),
                ),
              ),
            ),
            Tab(
              child: Container(
                child: const Text('Sound System'),
                // width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                height: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color:
                        index == 1 ? const Color(0XFF075AAA) : Colors.black,
                        width: 1)),
              ),
            ),
            Tab(
              child: Container(
                // margin: EdgeInsets.symmetric(horizontal: 0),
                child: const Text('Electronics'),
                // width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                height: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color:
                        index == 2 ? const Color(0XFF075AAA) : Colors.black,
                        width: 1)),
              ),
            ),
            Tab(
              child: Container(
                child: const Text('Lightening System'),
                // width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                height: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color:
                        index == 3 ? const Color(0XFF075AAA) : Colors.black,
                        width: 1)),
              ),
            ),
          ],
          indicator: BoxDecoration(
            color: const Color(0XFF075AAA),
            borderRadius: BorderRadius.circular(10),
          ),
          // indicatorColor: Colors.black,
          // indicatorWeight: 2,
          // labelColor: Colors.white,
          labelStyle: const TextStyle(color: Colors.white),
          // indicatorColor: Colors.blue,
          labelPadding: const EdgeInsets.symmetric(horizontal: 10),
          unselectedLabelColor: const Color(0XFF111111),
          indicatorSize: TabBarIndicatorSize.label,
          isScrollable: true,
        ),
      ),
      //     appBar: AppBar(
      //     bottom: TabBar(
      //     controller: _tabController,
      //     labelColor: Colors.white,
      //     indicator: BoxDecoration(
      //     color: Colors.red,
      //     borderRadius: BorderRadius.circular(10),
      // ),
      // tabs: [
      // Tab(
      // child: Container(
      // child: Text('Text'),
      // width: double.infinity,
      // height: double.infinity,
      // alignment: Alignment.center,
      // decoration: BoxDecoration(
      // color: Colors.transparent,
      // borderRadius: BorderRadius.circular(10),
      // border: Border.all(color: Colors.black,width: 2)
      // ),
      // ),
      // ),
      // Tab(text: 'Test 2'),
      // ],
      // ),
      // ),
      body: TabBarView(controller: _tabController, children: const [
        SoundSystemScreen(),
        SoundSystemScreen(),
        SoundSystemScreen(),
        SoundSystemScreen(),
      ]),
    );
  }
}
