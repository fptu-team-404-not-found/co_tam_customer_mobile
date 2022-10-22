import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/appbar/tab_controller.dart';
import '../../widgets/appbar/top_app_bar.dart';

class OrderMain extends StatelessWidget {
  const OrderMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: const PreferredSize(preferredSize: Size.fromHeight(56), child: TopAppBar('ĐƠN HÀNG', null, null)),
        body: TabControllerWidget()
    );
  }
}
