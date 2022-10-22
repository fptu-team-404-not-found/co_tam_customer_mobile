import 'package:flutter/material.dart';

import '../../widgets/appbar/top_app_bar.dart';

class VoucherMainScreen extends StatelessWidget {
  const VoucherMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: TopAppBar('Voucher', null, null, null)),
        body: Center(child: Text('Đây là trang chứa danh sách Voucher!'))
    );
  }
}
