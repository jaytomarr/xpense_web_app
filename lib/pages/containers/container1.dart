import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web_app/utils/colors.dart';
import 'package:xpense_web_app/utils/constants.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer1(),
      desktop: (BuildContext context) => desktopContainer1(),
    );
  }

  Widget mobileContainer1() {
    return Container(
      height: 600,
      margin: EdgeInsets.symmetric(horizontal: w! / 9, vertical: 30),
      child: Column(
        children: [
          Container(
            height: w! / 1.4,
            width: w! / 1.4,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(illustration)),
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Text(
                'Track your \nExpenses to \nSave Money',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: w! / 10,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Helps you to organize \nyour income and expenses',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: AppColors.light),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: 180,
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          AppColors.primary,
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_drop_down_rounded,
                        color: Colors.white,
                      ),
                      iconAlignment: IconAlignment.end,
                      label: Text(
                        ' Try free Demo',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '— Web, iOS and Android',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.light,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget desktopContainer1() {
    return Container(
      height: 600,
      margin: EdgeInsets.symmetric(horizontal: w! / 9, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track your \nExpenses to \nSave Money',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 96,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                    height: 1,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Helps you to organize your income and expenses',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 24,
                    color: AppColors.light,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    SizedBox(
                      height: 70,
                      width: 230,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            AppColors.primary,
                          ),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 28,
                          color: Colors.white,
                        ),
                        iconAlignment: IconAlignment.end,
                        label: Text(
                          ' Try free Demo',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      '— Web, iOS and Android',
                      style: TextStyle(
                        fontSize: 24,
                        color: AppColors.light,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 530,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(illustration),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
