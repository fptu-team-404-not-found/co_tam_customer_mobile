import 'package:co_tam_customer_mobile/app/pages/booking/test.dart';
import 'package:co_tam_customer_mobile/app/widgets/appbar/top_app_bar.dart';
import 'package:co_tam_customer_mobile/app/widgets/booking/order_booking_address.dart';
import 'package:co_tam_customer_mobile/app/widgets/booking/order_booking_extra_service.dart';
import 'package:co_tam_customer_mobile/app/widgets/booking/order_booking_main_service.dart';
import 'package:co_tam_customer_mobile/app/widgets/booking/order_booking_note.dart';
import 'package:co_tam_customer_mobile/app/widgets/booking/order_booking_status.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/constanst.dart';
import '../../widgets/button/action_button.dart';

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
      body: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              SizedBox(height: 24),
              OrderBookingStatus(initState: 0,),
              SizedBox(height: 24),
              OrderBookingAddress(),
              SizedBox(height: 24),
              SizedBox(height: 1.5, width: 340, child: DecoratedBox(decoration: BoxDecoration(color: AppColor.primaryColor30),),),
              SizedBox(height: 24),
              OrderBookingMainService(),
              SizedBox(height: 24),
              SizedBox(height: 1.5, width: 340, child: DecoratedBox(decoration: BoxDecoration(color: AppColor.primaryColor30),),),
              SizedBox(height: 24),
              OrderBookingExtraService(),
              SizedBox(height: 12),
              SizedBox(height: 1.5, width: 340, child: DecoratedBox(decoration: BoxDecoration(color: AppColor.primaryColor30),),),
              OrderBookingNote(),
              SizedBox(height: 24),
              ActionButton(numberOfButton: 2),
            ]
        ),
      ),
    );
  }
}
