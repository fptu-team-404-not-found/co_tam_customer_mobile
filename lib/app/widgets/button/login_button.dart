import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/constanst.dart';
import '../../utils/routes.dart';

class LoginButton extends StatelessWidget {
  final String title;
  final FaIcon icon;

  const LoginButton({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.pushNamed(context, Routes.mainScreen0);
      },
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(300, 50)),
        backgroundColor: MaterialStateProperty.all(AppColor.primaryColor100),
        foregroundColor: MaterialStateProperty.all(AppColor.secondaryColor100),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
        )),
      ),
      label: Text(
          title
      ),
      icon: icon,
    );
  }
}
