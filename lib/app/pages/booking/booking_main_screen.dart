import 'package:co_tam_customer_mobile/app/pages/booking/test.dart';
import 'package:co_tam_customer_mobile/app/widgets/appbar/top_app_bar.dart';
import 'package:co_tam_customer_mobile/app/widgets/booking/booking_main_button.dart';
import 'package:co_tam_customer_mobile/app/widgets/booking/order_booking_address.dart';
import 'package:co_tam_customer_mobile/app/widgets/booking/order_booking_extra_service.dart';
import 'package:co_tam_customer_mobile/app/widgets/booking/order_booking_main_service.dart';
import 'package:co_tam_customer_mobile/app/widgets/booking/order_booking_note.dart';
import 'package:co_tam_customer_mobile/app/widgets/booking/order_booking_status.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/constanst.dart';
import '../../widgets/button/action_button.dart';

class BookingMainScreen extends StatefulWidget {
  final int id;

  const BookingMainScreen({Key? key, required this.id}) : super(key: key);

  @override
  State<BookingMainScreen> createState() => _BookingMainScreenState();
}

class _BookingMainScreenState extends State<BookingMainScreen> {

  @override
  Widget build(BuildContext context) {
    int? houseID ;
    TestTitle string =
    widget.id == 1 ? TestTitle('Dọn Dẹp Nhà Cửa'):
    widget.id  == 2 ? TestTitle('Khử Trùng Nhà'):
    widget.id  == 3 ? TestTitle('Sofa - Rèm Cửa'):
                     TestTitle('Vệ Sinh Thiết Bị Lạnh');
    print("id: " + widget.id .toString());

    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(56), child: TopAppBar(string.title, FontAwesomeIcons.circleArrowLeft, null, null)),
      body: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 24),
              const OrderBookingStatus(initState: 0,),
              const SizedBox(height: 24),
              const OrderBookingAddress(),
              const SizedBox(height: 24),
              const SizedBox(height: 1.5, width: 340, child: DecoratedBox(decoration: BoxDecoration(color: AppColor.primaryColor30),),),
              const SizedBox(height: 24),
              OrderBookingMainService(serviceID: widget.id),
              const SizedBox(height: 24),
              const SizedBox(height: 1.5, width: 340, child: DecoratedBox(decoration: BoxDecoration(color: AppColor.primaryColor30),),),
              const SizedBox(height: 24),
              OrderBookingExtraService(id: widget.id),
              const SizedBox(height: 12),
              const SizedBox(height: 1.5, width: 340, child: DecoratedBox(decoration: BoxDecoration(color: AppColor.primaryColor30),),),
              OrderBookingNote(),
              const SizedBox(height: 70),
            ]
        ),
      ),
      floatingActionButton: BookingMainButton(id: widget.id, title: "Thanh Toán Chứ"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
