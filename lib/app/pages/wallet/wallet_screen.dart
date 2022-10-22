import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/appbar/top_app_bar.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: TopAppBar('Ví của bạn', FontAwesomeIcons.circleArrowLeft, null, null)),
        body: Center(child: Text('Đây là trang Wallet!'))
    );
  }
}
