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
    return Column(
      children: [
        Container(
          height: w! / 1.2,
          width: w! / 1.2,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(illustration1)),
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
                height: 1.2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Helps you to organize \nyour income and expenses',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
            ),
            SizedBox(height: 30),
            Column(
              children: [
                ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(AppColors.primary),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.arrow_drop_down_circle),
                  label: Text('Try free Demo', style: TextStyle(fontSize: 16)),
                ),
                SizedBox(height: 20),
                Text(
                  '- Web, iOS and Android',
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
                ),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget desktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  'Track your \nExpenses to \nSave Money',
                  style: TextStyle(
                    fontSize: w! / 20,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Helps you to organize your income and expenses',
                  style: TextStyle(fontSize: 20, color: Colors.grey.shade500),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          AppColors.primary,
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down_circle),
                      label: Text(
                        'Try free Demo',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      '- Web, iOS and Android',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey.shade500,
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
                  image: AssetImage(illustration1),
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
