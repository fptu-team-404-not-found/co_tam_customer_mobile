import 'package:flutter/material.dart';

import '../../widgets/appbar/tab_controller.dart';
import '../../widgets/appbar/top_app_bar.dart';

class OrderMain extends StatefulWidget {
  const OrderMain({Key? key}) : super(key: key);

  @override
  State<OrderMain> createState() => _OrderMainState();
}

class _OrderMainState extends State<OrderMain> {
  @override
  Widget build(BuildContext context) {
    setState((){});
    return const Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(56), child: TopAppBar('Đơn Hàng', null, null, null)),
        body: TabControllerWidget()
    );
  }
}

