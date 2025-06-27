import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
// import 'package:xpense_web_app/utils/colors.dart';
import 'package:xpense_web_app/utils/constants.dart';
import 'package:xpense_web_app/widgets/commoncontainer.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer4(),
      desktop: (BuildContext context) => desktopContainer4(),
    );
  }

  Widget mobileContainer4() {
    return commonContainerMobile(
      'free some cost',
      'Save cost \nfor you and \nfamily',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      illustration2,
    );
  }

  Widget desktopContainer4() {
    return commonContainer(
      'free some cost',
      'Save cost \nfor you and \nfamily',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. Enim \nipsum, amet quis ullamcorper eget ut.',
      illustration2,
      true,
    );
  }
}
