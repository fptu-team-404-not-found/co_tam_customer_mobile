
import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:co_tam_customer_mobile/app/widgets/booking/order_booking_status_line.dart';
import 'package:flutter/material.dart';

class OrderBookingStatus extends StatelessWidget {
  final int initState;

  const OrderBookingStatus({Key? key, required this.initState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text('Chọn dịch vụ', style: AppText.headingSmall2,),
            Text('Thanh toán', style: AppText.headingSmall2,),
            Text('Đặt hoàn tất', style: AppText.headingSmall2,),
          ],
        ),
        const SizedBox(height: 8),
        OrderBookingStatusLine(initState: initState),
      ],
    );
  }
}
