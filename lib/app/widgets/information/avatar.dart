
import 'package:flutter/material.dart';

import '../../utils/constanst.dart';
import '../../utils/routes.dart';

class Avatar extends StatelessWidget {
  final String imgUrl;
  final double radius;

  const Avatar(
      {Key? key,
      this.imgUrl = 'assets/img/default_avatar.jpg',
      required this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.confirmBookingScreen);
      },
      child: CircleAvatar(
        radius: radius,
        backgroundColor: AppColor.primaryColor100,
        child: Padding(
          padding: const EdgeInsets.all(4), // Border radius
          child: ClipOval(child: Image.asset(imgUrl)),
        ),
      ),
    );
  }
}
