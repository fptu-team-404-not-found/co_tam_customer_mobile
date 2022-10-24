
import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';

class OrderBookingStatusLine extends StatelessWidget {
  final int initState;

  const OrderBookingStatusLine({Key? key, required this.initState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (initState) {
      case 1:
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 3.0, width: 170.0, color: AppColor.primaryColor100),
            Container(height: 3.0, width: 170.0, color: AppColor.primaryColor30)
          ],
        );
      default:
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 3.0, width: 170.0, color: AppColor.primaryColor30),
            Container(height: 3.0, width: 170.0, color: AppColor.primaryColor30)
          ],
        );
      }
    }
}
