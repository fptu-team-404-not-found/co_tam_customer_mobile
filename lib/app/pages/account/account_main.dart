import 'package:co_tam_customer_mobile/app/widgets/appbar/top_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountMain extends StatelessWidget {

  const AccountMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(preferredSize: Size.fromHeight(56), child: TopAppBar('Thông tin', null, null, null)),
      body: Container(),
    );
  }
}
