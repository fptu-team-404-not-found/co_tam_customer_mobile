import 'package:flutter/cupertino.dart';

class OrderReceivingPage extends StatefulWidget {
  const OrderReceivingPage({Key? key}) : super(key: key);

  @override
  State<OrderReceivingPage> createState() => _OrderReceivingPageState();
}

class _OrderReceivingPageState extends State<OrderReceivingPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Đang nhận'),
    );
  }
}
