import 'package:co_tam_customer_mobile/app/widgets/account/account_head.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountMain extends StatelessWidget {

  const AccountMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          AccountHead(),
          //AccountBody(),
        ],
      ),
    );
  }
}
