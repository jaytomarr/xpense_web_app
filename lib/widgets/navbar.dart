import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web_app/utils/colors.dart';
import 'package:xpense_web_app/utils/constants.dart';
import 'package:xpense_web_app/utils/styles.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileNavBar(),
      desktop: (BuildContext context) => desktopNavBar(),
    );
  }

  Widget mobileNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 14),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu, color: AppColors.black),
          navLogo(),
        ],
      ),
    );
  }

  Widget desktopNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 14),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Features'),
              navButton('About us'),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),
          SizedBox(
            height: 45,
            child: ElevatedButton(
              style: borderedButton,
              onPressed: () {},
              child: Text(
                'Request a Demo',
                style: TextStyle(color: AppColors.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(logo), fit: BoxFit.contain),
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: AppColors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
