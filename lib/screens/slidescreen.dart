import 'dart:async';

import 'package:adil/screens/login_screen.dart';
import 'package:adil/screens/slidedotes.dart';
import 'package:adil/screens/slideitem.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int index = 0;
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    // Timer.periodic(const Duration(seconds: 2), (Timer timer) {
    //   if (_currentPage < 1) {
    //     setState(() {
    //       _currentPage++;
    //     });
    //   }
    //
    //   _pageController.animateToPage(
    //     _currentPage,
    //     duration: const Duration(milliseconds: 300),
    //     curve: Curves.easeIn,
    //   );
    // });
  }

  @override
  void dispose() {
    super.dispose();
    // _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                                (route) => false);
                          },
                          child: Text(
                            'Skip',
                            style: TextStyle(fontSize: 28),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemCount: 2,
                      itemBuilder: (ctx, i) => SlideItem(
                        index: i,
                      ),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            for (int i = 0; i < 2; i++)
                                              if (i == _currentPage)
                                                SlideDots(true)
                                              else
                                                SlideDots(false)
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: InkWell(
                                            onTap: () {
                                              if (_currentPage == 0) {
                                                setState(() {
                                                  _currentPage = 1;
                                                });
                                              } else {
                                                Navigator.pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            LoginScreen()),
                                                    (route) => false);
                                              }
                                            },
                                            child: Text("Next",
                                                style:
                                                    TextStyle(fontSize: 28))),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    )
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
