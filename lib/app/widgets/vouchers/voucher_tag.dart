import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:coupon_uikit/coupon_uikit.dart';

class VoucherTag extends StatefulWidget {
  final String voucherCode;
  final String value;
  final String endDate;
  final String image;
  const VoucherTag(
      {Key? key,
      required this.voucherCode,
      required this.value,
      required this.endDate,
      required this.image})
      : super(key: key);

  @override
  State<VoucherTag> createState() => _VoucherTagState();
}

class _VoucherTagState extends State<VoucherTag> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 5),
      child: SizedBox(
        width: 360,
        height: 110,
        child: CouponCard(
          curveAxis: Axis.vertical,
          backgroundColor: Colors.white,
           firstChild:  Padding(
              padding: const EdgeInsets.all(10.0),
               child: Image.asset(widget.image),
            ),
            secondChild: Container(
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 0.5,
                    color: Colors.grey,
                  )
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 35, top: 15, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Mã: ${widget.voucherCode}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Text('GIẢM ${widget.value} đ',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: AppColor.primaryColor100,
                        )),
                    Text(
                      'Ưu đãi đến ${widget.endDate}',
                      style: const TextStyle(
                        fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}
