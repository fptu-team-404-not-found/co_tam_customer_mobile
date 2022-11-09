import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:co_tam_customer_mobile/app/utils/routes.dart';

import '../../json_to_dart/token/token.dart';
import '../../rest_api/rest_api.dart';
import '../../utils/constanst.dart';

class LoginButton extends StatelessWidget {
  final String title;
  final FaIcon icon;
  final Function? customFunction;

  const LoginButton({Key? key, required this.title, required this.icon, this.customFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        if (customFunction != null) {
          customFunction!();
        }
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
