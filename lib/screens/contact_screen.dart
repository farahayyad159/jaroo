import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'CONTACT',
          style: TextStyle(
            color: Color(0XFF111111),
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.transparent,
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
        //       // Navigator.pushNamed(context, '/news_screen');
        //     },
        //     icon: const Icon(Icons.arrow_forward_ios_rounded),
        //     color: const Color(0XFF111111),
        //   ),
        // ],
      ),
      body: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 139, left: 15),
                width: 344,
                height: 39,
                child: Row(
                  children: const [
                    SizedBox(
                      width: 17,
                    ),
                    Icon(Icons.crop_square_sharp),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Lorem ipsum dolor consectetur',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        color: Color(0XFF075AAA),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                width: 344,
                height: 39,
                child: Row(
                  children: const [
                    SizedBox(
                      width: 17,
                    ),
                    Icon(Icons.phone),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '00972567202020',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        color: Color(0XFF075AAA),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                width: 344,
                height: 39,
                child: Row(
                  children: const [
                    SizedBox(
                      width: 17,
                    ),
                    Icon(Icons.mail),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'yajelectroincs@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        color: Color(0XFF075AAA),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  label: const Text(
                    'Your Name',
                    style: TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontFamily: 'Roboto',
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.person_outline_outlined,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      // width: 2
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      // width: 2
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      // width: 2
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      // width: 2
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      // width: 2
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      // width: 2
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      // width: 2
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      // width: 2
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      // width: 2
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                minLines: 4,
                maxLines: 5,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsetsDirectional.only(top: 0),
                  label: const Text(
                    'Message Here',
                    style: TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontFamily: 'Roboto',
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      // width: 2
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      // width: 2
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      // width: 2
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 32,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'SEND',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 18,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
