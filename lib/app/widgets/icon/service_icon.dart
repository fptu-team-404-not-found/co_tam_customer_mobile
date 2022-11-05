import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';

class ServiceIcon extends StatelessWidget {
  final double? size;
  final String? title;
  final Image icon;
  final Function? actionFunction;

  const ServiceIcon({Key? key, this.size, this.title, required this.icon, this.actionFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: size,
        height: size,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.primaryColor100),
        child: IconButton(
          onPressed: () {
            actionFunction!();
          },
          icon: icon,
        ),
      );
  }
}