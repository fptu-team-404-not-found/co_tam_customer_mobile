import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/appbar/top_app_bar.dart';
import '../../widgets/booking/order_booking_status.dart';

class BookingConfirmScreen extends StatelessWidget {
  const BookingConfirmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(56), child: TopAppBar("Confirm", FontAwesomeIcons.circleArrowLeft, null, null)),
      body: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              SizedBox(height: 24),
              OrderBookingStatus(initState: 1),
            ]
        ),
      ),
    );
  }
}
