import 'package:co_tam_customer_mobile/app/widgets/appbar/top_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookingMainScreen extends StatefulWidget {
  const BookingMainScreen({Key? key}) : super(key: key);

  @override
  State<BookingMainScreen> createState() => _BookingMainScreenState();
}

class _BookingMainScreenState extends State<BookingMainScreen> {
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
