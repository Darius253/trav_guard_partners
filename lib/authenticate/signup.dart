import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
      child: SingleChildScrollView(
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: Get.back, icon: const Icon(CupertinoIcons.back)),
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
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: SvgPicture.asset('assets/images/1.svg'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              suffixIcon: const Icon(CupertinoIcons.mail),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: const Icon(CupertinoIcons.lock),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.075,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 27, 27, 112)),
            child: const Center(
              child: Text(
                'SIGN UP',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Forgot your password?',
            style: TextStyle(
              color: Color.fromARGB(158, 27, 27, 112),
            ),
          )
        ]),
      ),
    )));
  }
}
