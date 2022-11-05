import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class OrderBookingAddress extends StatefulWidget {
  const OrderBookingAddress({Key? key}) : super(key: key);

  @override
  State<OrderBookingAddress> createState() => _OrderBookingAddressState();
}

class _OrderBookingAddressState extends State<OrderBookingAddress> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
        height: 35,
        child: OutlinedButton(
          onPressed: null,
          style: OutlinedButton.styleFrom(
            side: const BorderSide(width: 1, color: AppColor.primaryColor100),
          ),
          child: const Align(alignment: Alignment.centerLeft, child: Text("Chọn địa chỉ"),),
        )
    );
  }
}
