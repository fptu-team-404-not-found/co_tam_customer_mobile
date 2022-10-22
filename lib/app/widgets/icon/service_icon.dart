import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/cupertino.dart';

class ServiceIcon extends StatelessWidget {
  final double size;
  final double iconSize;
  final String? title;
  final IconData icon;
  const ServiceIcon({super.key, required this.size, required this.iconSize, this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.primaryColor100),
      child:  Icon(icon , size: iconSize,),
    );
  }
}