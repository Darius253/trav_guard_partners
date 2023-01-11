import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trav_guard_partners/onboarding_screen/first_screen.dart';
import 'package:trav_guard_partners/onboarding_screen/second_screen.dart';
import 'package:trav_guard_partners/onboarding_screen/third_screen.dart';

import '../authenticate/signup.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
      int pageIndex;
    List<Widget> pages = [
      const FirstScreen(),
      const SecondScreen(),
      const ThirdScreen(),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
        child: Stack(
          children: [
            Row(
              children: [
                const Expanded(child: SizedBox()),
                Image.asset(
                  'assets/images/toursafe_logo.png',
                  width: MediaQuery.of(context).size.width * 0.15,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.08,
              ),
              child: PageView(
                controller: pageController,
                children: pages,
                onPageChanged: (index) {
                  setState(() {
                    pageIndex = index;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.75,
              ),
              child: Row(
                children: [
                  SmoothPageIndicator(
                    controller: pageController,
                    count: pages.length,
                    effect: const SwapEffect(
                        dotHeight: 8.0,
                        dotWidth: 8.0,
                        activeDotColor: Color.fromARGB(204, 0, 1, 3)),
                  ),
                  const Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap:
                        // pageIndex != 2

                        //     ? () {
                        //         _pageController.animateToPage(pageIndex + 1,
                        //             duration: const Duration(milliseconds: 200),
                        //             curve: Curves.ease);
                        //       }
                        //     :
                        (() => Get.to(() => const SignUpPage())),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black),
                      child: const Icon(
                        CupertinoIcons.forward,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
