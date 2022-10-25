import 'package:co_tam_customer_mobile/app/pages/booking/test.dart';
import 'package:co_tam_customer_mobile/app/widgets/booking/extra_service.dart';
import 'package:co_tam_customer_mobile/app/widgets/icon/service_icon.dart';
import 'package:flutter/material.dart';

import '../../pages/booking/booking_main_screen.dart';
import '../../utils/constanst.dart';
import '../../utils/routes.dart';

class ExtraServiceList extends StatelessWidget {
  const ExtraServiceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ExtraService(
            icon: ServiceIcon(size:70, icon: const Image(image: AssetImage('assets/img/service_icons/shield.png'))),
            name: 'Bộ dụng cụ nâng cao',
            price: '+50.000đ',
            description: 'description'),

        ExtraService(
            icon: ServiceIcon(size:70, icon: const Image(image: AssetImage('assets/img/service_icons/shield.png'))),
            name: 'Nấu ăn',
            price: '+30.000đ',
            description: 'description'),

        ExtraService(
            icon: ServiceIcon(size:70, icon: const Image(image: AssetImage('assets/img/service_icons/shield.png'))),
            name: 'Vệ sinh chuồng vật nuôi',
            price: '+20.000đ',
            description: 'description'),

        ExtraService(
            icon: ServiceIcon(size:70, icon: const Image(image: AssetImage('assets/img/service_icons/shield.png'))),
            name: 'Giặt tay quần áo',
            price: '+20.000đ',
            description: 'description'),
      ],
    );
  }
}
