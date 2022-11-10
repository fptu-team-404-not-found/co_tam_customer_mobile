import 'package:co_tam_customer_mobile/app/pages/booking/test.dart';
import 'package:co_tam_customer_mobile/app/widgets/icon/service_icon.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../json_to_dart/booking/order_booking/order_booking.dart';
import '../../pages/booking/booking_main_screen.dart';
import '../../rest_api/rest_api.dart';
import '../../utils/constanst.dart';
import '../../utils/routes.dart';

class ServiceIconList extends StatefulWidget {
  const ServiceIconList({Key? key}) : super(key: key);

  @override
  State<ServiceIconList> createState() => _ServiceIconListState();
}

class _ServiceIconListState extends State<ServiceIconList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            ServiceIcon(
                title: 'Dọn dẹp',
                size: 80,
                icon: const Image(
                    image: AssetImage('assets/img/service_icons/vacuum.png')),
                actionFunction: (){
                  Navigator.pushNamed(context, Routes.mainBookingScreen1,
                  );
                }),
            const SizedBox(height: 11),
            const Text('Dọn dẹp', style: AppText.textBlack),
          ],
        ),
        const SizedBox(width: 11),
        Column(
          children: [
            ServiceIcon(
                title: 'Khử trùng',
                size: 80,
                icon: const Image(
                    image: AssetImage('assets/img/service_icons/shield.png')),
                actionFunction: () => {
                  Navigator.pushNamed(context, Routes.mainBookingScreen2)
                }),
            const SizedBox(height: 11),
            const Text('Khử trùng', style: AppText.textBlack),
          ],
        ),
        const SizedBox(width: 11),
        Column(
          children: [
            ServiceIcon(
                title: 'Sofa - Rèm cửa',
                size: 80,
                icon: const Image(
                    image: AssetImage('assets/img/service_icons/sofa.png')),
                actionFunction: () => {
                  Navigator.pushNamed(context, Routes.mainBookingScreen3,
                      )
                }),
            const SizedBox(height: 11),
            const Text('Sofa - Rèm cửa', style: AppText.textBlack),
          ],
        ),
        const SizedBox(width: 11),
        Column(
          children: [
            ServiceIcon(
                title: 'Thiết bị lạnh',
                size: 80,
                icon: const Image(
                    image: AssetImage('assets/img/service_icons/washing.png')),
                actionFunction: () => {
                  Navigator.pushNamed(context, Routes.mainBookingScreen4,
                      )
                }),
            const SizedBox(height: 11),
            const Text('Thiết bị lạnh', style: AppText.textBlack),
          ],
        ),
      ],
    );
  }
}
