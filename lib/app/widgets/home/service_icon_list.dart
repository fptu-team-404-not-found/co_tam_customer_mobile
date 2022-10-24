import 'package:co_tam_customer_mobile/app/pages/booking/test.dart';
import 'package:co_tam_customer_mobile/app/widgets/icon/service_icon.dart';
import 'package:flutter/material.dart';

import '../../pages/booking/booking_main_screen.dart';
import '../../utils/constanst.dart';
import '../../utils/routes.dart';

class ServiceIconList extends StatelessWidget {
  const ServiceIconList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            ServiceIcon(
                title: 'Dọn dẹp',
                size:80,
                icon: const Image(image: AssetImage('assets/img/service_icons/vacuum.png')),
                actionFunction: () => {
                  Navigator.pushNamed(context, Routes.mainBookingScreen, arguments: TestTitle('Dọn Dẹp Nhà Cửa'))}),
            const SizedBox(height: 11),
            const Text('Dọn dẹp', style: AppText.textBlack),
          ],
        ),
        const SizedBox(width: 11),
        Column(
          children: [
            ServiceIcon(title: 'Khử trùng', size:80, icon:  const Image(image: AssetImage('assets/img/service_icons/shield.png')), actionFunction: () => {Navigator.pushNamed(context, Routes.mainBookingScreen, arguments: TestTitle('Khử Trùng Nhà'))}),
            const SizedBox(height: 11),
            const Text('Khử trùng', style: AppText.textBlack),
          ],
        ),
        const SizedBox(width: 11),
        Column(
          children: [
            ServiceIcon(title: 'Sofa - Rèm cửa', size:80, icon: const Image(image: AssetImage('assets/img/service_icons/sofa.png')), actionFunction: () => {Navigator.pushNamed(context, Routes.mainBookingScreen, arguments: TestTitle('Sofa - Rèm Cửa'))}),
            const SizedBox(height: 11),
            const Text('Sofa - Rèm cửa', style: AppText.textBlack),
          ],
        ),
        const SizedBox(width: 11),
        Column(
          children: [
            ServiceIcon(title: 'Thiết bị lạnh', size:80, icon: const Image(image: AssetImage('assets/img/service_icons/washing.png')), actionFunction: () => {Navigator.pushNamed(context, Routes.mainBookingScreen, arguments: TestTitle('Vệ Sinh Thiết Bị Lạnh'))}),
            const SizedBox(height: 11),
            const Text('Thiết bị lạnh', style: AppText.textBlack),
          ],
        ),
      ],
    );
  }
}
