import 'package:co_tam_customer_mobile/app/widgets/vouchers/voucher_detail_info.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/constanst.dart';
import '../../widgets/appbar/top_app_bar.dart';

class VoucherDetailScreen extends StatelessWidget {
  const VoucherDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: TopAppBar('Chi tiết Voucher',
                FontAwesomeIcons.circleArrowLeft, null, null)),
        body: Column(
          children: [
            AspectRatio(
                aspectRatio: 1.5,
                child: Image.asset('assets/img/voucher2.png')),
            SizedBox(
              height: 15,
            ),
            VoucherDetailInfor(title: 'Mã voucher', content: 'SHOPEET09'),
            VoucherDetailInfor(title: 'Trị giá', content: '50000'),
            VoucherDetailInfor(title: 'Ngày bắt đầu', content: '25/10/2022'),
            VoucherDetailInfor(title: 'Ngày kết thúc', content: '16/10/2022'),
            VoucherDetailInfor(title: 'Tình trạng', content: 'Chưa sử dụng'),
            VoucherDetailInfor(
                title: 'Điều kiện',
                content: 'Áp dụng hóa đơn trên 5 triệu đồng'),
              Expanded(
                   child: Align(
                      alignment: Alignment.bottomCenter,
                        child: TextButton(onPressed: null, style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: AppColor.primaryColor100,
                          padding: const EdgeInsets.only(left: 120, right:120, top: 10 , bottom: 10),
                          textStyle: const TextStyle(fontSize: 25),
                        ), child: const Text('Sử dụng', style: TextStyle(
                          color: Colors.white
                        )))),
                   ),
          ],
        ));
  }
}
