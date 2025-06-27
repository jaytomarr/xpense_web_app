import 'package:flutter/material.dart';
import 'package:xpense_web_app/pages/containers/container1.dart';
import 'package:xpense_web_app/pages/containers/container2.dart';
import 'package:xpense_web_app/pages/containers/container3.dart';
import 'package:xpense_web_app/pages/containers/container4.dart';
import 'package:xpense_web_app/pages/containers/container5.dart';
import 'package:xpense_web_app/utils/constants.dart';
import 'package:xpense_web_app/widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              NavBar(),
              SizedBox(height: w! / 40),
              Container1(),
              Container2(),
              SizedBox(height: w! / 20),
              Container3(),
              SizedBox(height: w! / 20),
              Container4(),
              SizedBox(height: w! / 20),
              Container5(),
            ],
          ),
        ),
      ),
    );
  }
}
