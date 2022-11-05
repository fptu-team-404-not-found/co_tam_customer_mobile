import 'package:co_tam_customer_mobile/app/widgets/vouchers/voucher_detail_info.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/constanst.dart';
import '../../widgets/appbar/top_app_bar.dart';

class VoucherDetailScreen extends StatefulWidget {
  const VoucherDetailScreen({Key? key, this.image, this.code, this.value, this.startDate, this.endDate, this.amount, this.description}) : super(key: key);
  final image, code, startDate, endDate, description;
  final double? value;
  final int? amount;

  @override
  State<VoucherDetailScreen> createState() => _VoucherDetailScreenState(image, code, value, startDate, endDate, amount, description);
}

class _VoucherDetailScreenState extends State<VoucherDetailScreen> {
  final image, code, startDate, endDate, description;
  final double? value;
  final int? amount;_VoucherDetailScreenState(this.image, this.code, this.value, this.startDate, this.endDate, this.amount, this.description);
  final ScrollController _scrollController = ScrollController();
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
                child: Image.asset(image.toString())),
            SizedBox(
              height: 15,
            ),
            VoucherDetailInfor(title: 'Mã voucher', content: code.toString()),
            VoucherDetailInfor(title: 'Trị giá', content: value.toString()),
            VoucherDetailInfor(title: 'Ngày bắt đầu', content: startDate.toString()),
            VoucherDetailInfor(title: 'Ngày kết thúc', content: endDate.toString()),
            VoucherDetailInfor(title: 'Tình trạng', content: amount.toString()),
            VoucherDetailInfor(
                title: 'Điều kiện',
                content: description.toString()),
            Expanded(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(onPressed: null, style: TextButton.styleFrom(
                    //1214
                    /*foregroundColor: Colors.white,*/
                    backgroundColor: AppColor.primaryColor100,
                    padding: const EdgeInsets.only(left: 120, right:120, top: 10 , bottom: 10),
                    textStyle: const TextStyle(fontSize: 25),
                  ), child: const Text('Lấy mã', style: TextStyle(
                      color: Colors.white
                  )))),
            ),
          ],
        ));
  }
}


