import 'package:co_tam_customer_mobile/app/pages/booking/test.dart';
import 'package:co_tam_customer_mobile/app/widgets/appbar/top_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookingMainScreen extends StatefulWidget {
  final TestTitle title;

  const BookingMainScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<BookingMainScreen> createState() => _BookingMainScreenState();
}

class _BookingMainScreenState extends State<BookingMainScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(56), child: TopAppBar(widget.title.title, FontAwesomeIcons.circleArrowLeft, null, null)),
      body: const Center(
        child: Text('Đây là trang booking!'),
      ),
    );
  }
}
