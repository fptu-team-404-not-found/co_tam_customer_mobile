
import 'package:flutter/material.dart';

import '../../../utils/constanst.dart';
import 'order_details_summary_price.dart';

class OrderDetailsSummary extends StatefulWidget {
  const OrderDetailsSummary({Key? key}) : super(key: key);

  @override
  State<OrderDetailsSummary> createState() => _OrderDetailsSummaryState();
}

class _OrderDetailsSummaryState extends State<OrderDetailsSummary> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Divider(color: AppColor.primaryColor100),
        Text('Tóm tắt dịch vụ', style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 24
        )),
        Padding(padding: EdgeInsets.all(4), child: OrderDetailsSummaryPrice(title: 'Dịch vụ chính', price: '220 000')),
        Padding(padding: EdgeInsets.all(4), child: OrderDetailsSummaryPrice(title: 'Dịch vụ thêm', price: '150 000')),
        Padding(padding: EdgeInsets.all(4), child: OrderDetailsSummaryPrice(title: 'Ưu đãi', price: '70 000')),
        SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Text( 'Tổng tạm tính', style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
          )),
          Text('300 000', style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
          )),
        ],
      )
      ],
    );
  }
}
