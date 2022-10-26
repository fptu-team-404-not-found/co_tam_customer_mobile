
import 'package:flutter/material.dart';

import '../../../utils/constanst.dart';
import 'order_details_summary_price.dart';

class OrderDetailsPayment extends StatefulWidget {
  const OrderDetailsPayment({Key? key}) : super(key: key);

  @override
  State<OrderDetailsPayment> createState() => _OrderDetailsPaymentState();
}

class _OrderDetailsPaymentState extends State<OrderDetailsPayment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        const Divider(color: AppColor.primaryColor100),
        const Text('Thanh toán', style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 24
        )),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  const [
          Text( 'Thanh toán', style: TextStyle(
              fontSize: 16,
          )),
          Text('Tiền mặt', style: TextStyle(
              fontSize: 16,
          )),
        ],
      )
      ],
    );
  }
}
