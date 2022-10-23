import 'package:co_tam_customer_mobile/app/widgets/orders/orders_rating_tag.dart';
import 'package:flutter/cupertino.dart';

class OrderRatingPage extends StatefulWidget {
  const OrderRatingPage({Key? key}) : super(key: key);

  @override
  State<OrderRatingPage> createState() => _OrderRatingPageState();
}

class _OrderRatingPageState extends State<OrderRatingPage> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: 50,
      itemBuilder: (BuildContext context, int index) {
        return const OrderRatingTag(
            mainInfo: 'Dọn dẹp vệ sinh nhà cửa',
            startTime: '15-10-2022 15:22',
            endTime: '15-10-2022 15:23',
            price: '500 000',
            endRatingDate: '15-10-2022');
      },
    );
  }
}
