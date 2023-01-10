import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
              height:MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
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
    );
  }
}