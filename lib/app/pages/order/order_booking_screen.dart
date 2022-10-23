import 'package:co_tam_customer_mobile/app/widgets/icon/service_icon.dart';
import 'package:co_tam_customer_mobile/app/widgets/tag/order_booking_tag.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/constanst.dart';

class OrderBookingScreen extends StatefulWidget {
  const OrderBookingScreen({Key? key}) : super(key: key);

  @override
  State<OrderBookingScreen> createState() => _OrderBookingScreenState();
}

class _OrderBookingScreenState extends State<OrderBookingScreen> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
  GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RefreshIndicator(
        key: _refreshIndicatorKey,
        color: Colors.white,
        backgroundColor: AppColor.primaryColor100,
        strokeWidth: 2.0,
        onRefresh: () async {
          // Replace this delay with the code to be executed during refresh
          // and return a Future when code finishs execution.
          return Future<void>.delayed(const Duration(seconds: 3));
        },
        // Pull from top to show refresh indicator.
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return const OrderBookingTag(
                iconData: ServiceIcon(size:35, icon: Image(image: AssetImage('assets/img/service_icons/vacuum.png'))),
                mainInfo: 'Dọn dẹp vệ sinh nhà cửa',
                subInfo: 'Đặt lúc 08:00',
                extraInfo: 'Nhận đơn'
            );
          },
        ),
      ),
    );
  }
}
