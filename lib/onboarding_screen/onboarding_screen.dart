import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trav_guard_partners/onboarding_screen/first_screen.dart';
import 'package:trav_guard_partners/onboarding_screen/second_screen.dart';
import 'package:trav_guard_partners/onboarding_screen/third_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    List<Widget> pages = [
      const FirstScreen(),
      const SecondScreen(),
      const ThirdScreen(),
    
    ];
    int index = 0;
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
                controller: controller,
                children: pages,
                onPageChanged: (value) {
                  setState(() {
                    index = value;
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
                  const Icon(Icons.more_horiz),
                  const Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap: (() {
                     
                    }),
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
