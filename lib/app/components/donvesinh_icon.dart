import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CleaningIcon extends StatelessWidget {
  const CleaningIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget circle = Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.primaryColor100),
      child: const Icon(CupertinoIcons.envelope_open, size: 20,),
    );

    return Material(
      child: Center(
          child: circle
      ),
    );
  }
}

