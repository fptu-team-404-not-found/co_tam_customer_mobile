import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:co_tam_customer_mobile/app/widgets/icon/service_icon.dart';
import 'package:flutter/material.dart';

class ExtraService extends StatelessWidget {
  final ServiceIcon icon;
  final String name;
  final String price;
  final String description;

  const ExtraService({super.key, required this.icon, required this.name, required this.price, required this.description});

  @override
  Widget build(BuildContext context) {
    return
    Container(
      width: 70,
      child: Column(
        children: [
          icon,
          const SizedBox(height: 8),
          Text(name, style: AppText.textBlack, textAlign: TextAlign.center),
          const SizedBox(height: 4),
          Text(price, style: AppText.textGrey, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}