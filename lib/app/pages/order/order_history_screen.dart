import 'package:co_tam_customer_mobile/app/widgets/tag/order_history_tag.dart';
import 'package:flutter/material.dart';

import '../../utils/constanst.dart';
import '../../widgets/icon/service_icon.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({Key? key}) : super(key: key);

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
  GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RefreshIndicator(
        key: _refreshIndicatorKey,
        color: Colors.white,
        backgroundColor: AppColor.primaryColor100,
        strokeWidth: 2.0,
        onRefresh: () async {
          // Replace this delay with the code to be executed during refresh
          // and return a Future when code finishs execution.
          return Future<void>.delayed(const Duration(seconds: 3));
        },
        // Pull from top to show refresh indicator.
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return const OrderHistoryTag(
                iconData: ServiceIcon(size:35, icon: Image(image: AssetImage('assets/img/service_icons/sofa.png'))),
                mainInfo: 'Vệ sinh Sofa - Rèm cửa',
                subInfo: '10 - 10 - 2022, 08:00 - 10:48',
                extraInfo: '669.000đ'
            );
          },
        ),
      ),
    );
  }
}
