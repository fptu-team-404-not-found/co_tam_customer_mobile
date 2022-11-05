import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:co_tam_customer_mobile/app/widgets/booking/booking_confirm_service_info.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/appbar/top_app_bar.dart';
import '../../widgets/booking/booking_confirm_payment.dart';
import '../../widgets/booking/booking_confirm_voucher.dart';
import '../../widgets/booking/order_booking_status.dart';

class BookingConfirmScreen extends StatelessWidget {
  const BookingConfirmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size.fromHeight(56), child: TopAppBar("Confirm", FontAwesomeIcons.circleArrowLeft, null, null)),
      body: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              SizedBox(height: 24),
              OrderBookingStatus(initState: 1),
              ConfirmServiceInfo(mainServiceTitle: 'Dọn dẹp vệ sinh', address: '200 Làng phong phú, huyện phong khê', extraService: ['ủi đồ', 'vệ sinh'], ),
              Divider(
                height: 8,
                thickness: 1,
                color: AppColor.subColor30,
              ),
              BookingConfirmVoucher(),
              Divider(
                height: 8,
                thickness: 1,
                color: AppColor.subColor30,
              ),
              PaymentMethod(),
              Divider(
                thickness: 0.5,
                color: AppColor.primaryColor100,
              ),
              Padding(
                padding: EdgeInsets.all(40.0),
                child: SizedBox(
                  height: 50,
                  width: 200,
                  child: TextButton(
                    //1214
                      /*style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(AppColor.primaryColor100),
                      ),*/
                      onPressed: null ,
                      child: Text('Đặt đơn', style: TextStyle(color: Colors.white, fontSize: 20),)),
                ),
              )
            ]
        ),
      ),
    );
  }
}
