import 'package:flutter/material.dart';

class OrderDetailsSummaryPrice extends StatefulWidget {
  final String title;
  final String price;
  const OrderDetailsSummaryPrice({Key? key, required this.title, required this.price}) : super(key: key);
  @override
  State<OrderDetailsSummaryPrice> createState() => _OrderDetailsSummaryPriceState();
}

class _OrderDetailsSummaryPriceState extends State<OrderDetailsSummaryPrice> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Text( widget.title, style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400
        )),
        Text(widget.price, style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400
        )),
      ],
    );
  }
}
