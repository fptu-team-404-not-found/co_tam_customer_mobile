
import 'package:flutter/material.dart';

import '../../../utils/constanst.dart';
import 'order_details_summary_price.dart';

class OrderDetailsSummary extends StatefulWidget {
  const OrderDetailsSummary({Key? key, required this.packageValue, required this.extraValue, required this.voucherValue, required this.total}) : super(key: key);
  final double? total, packageValue, extraValue, voucherValue;

  @override
  State<OrderDetailsSummary> createState() => _OrderDetailsSummaryState();
}

class _OrderDetailsSummaryState extends State<OrderDetailsSummary> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 15, right: 15),
    child: Column(
      children:  [
        const Divider(color: AppColor.primaryColor100),
        const Text('Tóm tắt dịch vụ', style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24
        )),
        Padding(padding: const EdgeInsets.all(4), child: OrderDetailsSummaryPrice(title: 'Dịch vụ chính', price: widget.packageValue!.toString())),
        Padding(padding: const EdgeInsets.all(4), child: OrderDetailsSummaryPrice(title: 'Dịch vụ thêm', price: widget.extraValue!.toString())),
        const Padding(padding: EdgeInsets.all(4), child: OrderDetailsSummaryPrice(title: 'Ưu đãi', price: '0')),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            const Text( 'Tổng tạm tính', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
            )),
            Text((widget.total!).toString(), style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
            )),
          ],
        )
      ],
    ),);
  }
}
