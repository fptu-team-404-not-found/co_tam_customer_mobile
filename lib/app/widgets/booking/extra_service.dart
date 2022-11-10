import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:co_tam_customer_mobile/app/widgets/icon/service_icon.dart';
import 'package:flutter/material.dart';

class ExtraService extends StatelessWidget {
  final ServiceIcon icon;
  final String name;
  final String price;

  const ExtraService({Key? key, required this.icon, required this.name, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    SizedBox(
      width: 70,
      child: Column(
        children: [
          icon,
          const SizedBox(height: 8),
          Text(name, style: AppText.textBlack, textAlign: TextAlign.center, overflow: TextOverflow.clip),
          const SizedBox(height: 4),
          Text(price, style: AppText.textGrey, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}