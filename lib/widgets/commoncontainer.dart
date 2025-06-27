// import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:xpense_web_app/utils/colors.dart';
import 'package:xpense_web_app/utils/constants.dart';

Widget commonContainer(String s1, s2, s3, image, bool imageLeft) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 9, vertical: 30),
    child: Row(
      children: [
        imageLeft
            ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
            : SizedBox(),

        Expanded(
          child: Column(
            crossAxisAlignment: imageLeft
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            children: [
              Text(
                s1.toUpperCase(),
                textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                style: TextStyle(color: AppColors.light, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                s2,
                textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: w! / 16,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              SizedBox(height: 10),
              Text(
                s3,
                textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                style: TextStyle(color: AppColors.light, fontSize: 20),
              ),
              SizedBox(height: 20),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                  color: AppColors.primary,
                ),
                iconAlignment: IconAlignment.end,
                label: Text(
                  textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                  'Learn More',
                  style: TextStyle(color: AppColors.primary, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        !imageLeft
            ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
            : SizedBox(),
      ],
    ),
  );
}

Widget commonContainerMobile(String s1, s2, s3, image) {
  return Container(
    height: 700,
    width: double.infinity,
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 9, vertical: 30),
    child: Column(
      children: [
        Container(
          height: w! / 1.4,
          width: w! / 1.4,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(height: 20),
        Expanded(
          child: Column(
            children: [
              Text(
                s1.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.light, fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                s2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: w! / 10,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              SizedBox(height: 10),
              Text(
                s3,
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.light, fontSize: 16),
              ),
              SizedBox(height: 20),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                  color: AppColors.primary,
                ),
                iconAlignment: IconAlignment.end,
                label: Text(
                  textAlign: TextAlign.center,
                  'Learn More',
                  style: TextStyle(color: AppColors.primary, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
