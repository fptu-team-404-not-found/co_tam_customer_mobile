
import 'package:flutter/material.dart';

import '../../../utils/constanst.dart';
import 'order_details_summary_price.dart';

class OrderDetailsPayment extends StatefulWidget {
  const OrderDetailsPayment({Key? key, required this.paymentID}) : super(key: key);
  final paymentID;

  @override
  State<OrderDetailsPayment> createState() => _OrderDetailsPaymentState();
}

class _OrderDetailsPaymentState extends State<OrderDetailsPayment> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(51),
    child: Column(
      children:  [
        const Divider(color: AppColor.primaryColor100),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Phương thức thanh toán: ', style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16
            )),
            Text( widget.paymentID! == 1 ? 'Tiền mặt' : "Ví", style: const TextStyle(
              fontSize: 16,
            )),
          ],
        )
      ],
    ),);
  }
}
