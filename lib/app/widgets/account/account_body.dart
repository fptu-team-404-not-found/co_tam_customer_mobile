import 'package:flutter/material.dart';

import '../../utils/constanst.dart';
import 'account_info_bar.dart';

class AccountBody extends StatefulWidget {
  const AccountBody({Key? key}) : super(key: key);

  @override
  State<AccountBody> createState() => _AccountBodyState();
}

class _AccountBodyState extends State<AccountBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Divider(
          height: 8,
          thickness: 1,
          color: AppColor.subColor30,
        ),
        AccountInfoBar(textData: '21/01/2001', iconData: Icons.cake,),
        Divider(
          height: 8,
          thickness: 1,
          color: AppColor.subColor30,
        ),
        AccountInfoBar(textData: '0123456789', iconData: Icons.phone,),
        Divider(
          height: 8,
          thickness: 1,
          color: AppColor.subColor30,
        ),
        AccountInfoBar(textData: 'thangth@gmail.com', iconData: Icons.mail,),
        Divider(
          height: 8,
          thickness: 1,
          color: AppColor.subColor30,
        ),
        AccountInfoBar(textData: '100000', iconData: Icons.account_balance_wallet,),
        Divider(
          height: 8,
          thickness: 1,
          color: AppColor.subColor30,
        ),
      ],
    );
  }
}
