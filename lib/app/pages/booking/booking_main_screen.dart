import 'package:co_tam_customer_mobile/app/widgets/appbar/top_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainBookingScreen extends StatefulWidget {
  const MainBookingScreen({Key? key}) : super(key: key);

  @override
  State<MainBookingScreen> createState() => _MainBookingScreenState();
}

class _MainBookingScreenState extends State<MainBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(56), child: TopAppBar('Đặt đơn', FontAwesomeIcons.circleArrowLeft, null, null)),
      body: Center(
        child: Text('Đây là trang booking!'),
      ),
    );
  }
}
