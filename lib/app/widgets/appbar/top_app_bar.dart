import 'package:co_tam_customer_mobile/app/rest_api/rest_api.dart';
import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class TopAppBar extends StatelessWidget {
  final String title;
  final IconData? leadingIcon;
  final IconData? actionIcon;
  final Function? actionFunction;

  const TopAppBar(this.title, this.leadingIcon, this.actionIcon, this.actionFunction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(onPressed: () {
            if (leadingIcon != null) {
              CLearDataDouble();
              CLearDataInt();
              CLearDataString();
              Navigator.pop(context);
            }
          }, icon: FaIcon(leadingIcon)),
          centerTitle: true,
          title: Text(title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 26,
                  fontStyle: FontStyle.normal,
                  color: AppColor.secondaryColor100)),
          backgroundColor: AppColor.primaryColor100,
          actions: [
            //Center(child: Padding(padding: const EdgeInsets.only(right: 24), child: FaIcon(actionIcon)))
            IconButton(
                onPressed: () {
                  actionFunction!();
                },
                icon: FaIcon(actionIcon),
                alignment: Alignment.center
            )
          ],
        )
    );
  }
}

