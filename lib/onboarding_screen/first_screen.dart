import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      slidingCurve: Curves.linearToEaseOut,
      slidingBeginOffset: const Offset(0, -1),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
                height:MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                    child: Lottie.asset('assets/images/animation.json'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Enjoy your Stay Here, Right Now.',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'UI/UX Login Screen Interaction 3 designed by Samuel Oktavianus. Connect with them on Dribbble; the global community for designers and creative professionals.',
                style: TextStyle(color: Colors.grey,),
              ),
        ],
      ),
    );
  }
}