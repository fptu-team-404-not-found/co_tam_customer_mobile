import 'package:co_tam_customer_mobile/app/widgets/orders/orders_tag.dart';
import 'package:flutter/cupertino.dart';

class OrderReceivingPage extends StatefulWidget {
  const OrderReceivingPage({Key? key}) : super(key: key);

  @override
  State<OrderReceivingPage> createState() => _OrderReceivingPageState();
}

class _OrderReceivingPageState extends State<OrderReceivingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return  const OrderTag(mainInfo: 'Dọn dẹp vệ sinh nhà cửa', startTime: '8:00', extraInfo: 'Nhận đơn',);
        },
      );
  }
}
