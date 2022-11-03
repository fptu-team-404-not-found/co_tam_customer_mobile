import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/constanst.dart';

class BookingConfirmVoucher extends StatefulWidget {
  const BookingConfirmVoucher({Key? key}) : super(key: key);

  @override
  State<BookingConfirmVoucher> createState() => _BookingConfirmVoucherState();
}

class _BookingConfirmVoucherState extends State<BookingConfirmVoucher> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children:  [
          const Padding(padding:  EdgeInsets.all(8), child: FaIcon(FontAwesomeIcons.ticket, color: AppColor.primaryColor100, size: 30)),
          Text('Chọn Voucher', style:  const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              fontStyle: FontStyle.normal,
              color: AppColor.subColor100)
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100.0),
            child: Text('Chọn hoặc nhập mã', style:  const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                fontStyle: FontStyle.normal,
                color: Colors.grey)
            ),
          ),


        ],
      ),
    );
  }
}
