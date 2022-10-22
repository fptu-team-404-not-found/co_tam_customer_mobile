import 'package:flutter/cupertino.dart';

class OrderRatingPage extends StatefulWidget {
  const OrderRatingPage({Key? key}) : super(key: key);

  @override
  State<OrderRatingPage> createState() => _OrderRatingPageState();
}

class _OrderRatingPageState extends State<OrderRatingPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Đánh giá'),
    );
  }
}
