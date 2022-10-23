import 'package:flutter/cupertino.dart';

import '../../widgets/orders/orders_tag.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (BuildContext context, int index) {
        return const OrderTag(
          mainInfo: 'Dọn dẹp vệ sinh nhà cửa',
          startTime: '12-12-2012 - 8:00',
          endTime: '12-12-2012 - 13:00',
          extraInfo: '60 000',
        );
      },
    );
  }
}
