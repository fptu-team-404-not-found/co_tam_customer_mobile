import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.all(10),
      child: AspectRatio(
        aspectRatio: 3,
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.shade600,
                blurRadius: 10,
                offset: const Offset(4, 4)),
          ]),
          child: Row(children: [
            Container(
              color: Colors.white,
              width: 170,
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 12,), //apply padding to some sides only
                      child: Text(widget.voucherCode.toUpperCase(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          )
                      ),
                    ),
                    const Divider(
                      height: 15,
                      thickness: 1,
                      endIndent: 30,
                      color: AppColor.subColor10,
                    ),
                    const Text('Trị giá', style: TextStyle(fontSize: 12)),
                    Text('${widget.value} đ',
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          color: AppColor.primaryColor100,
                        )),
                    Text(
                      'Đến ${widget.endDate}',
                      style: const TextStyle(
                          height: 2.5,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 190,
              height: 150,
              child: Image.asset(widget.image, fit: BoxFit.cover),
            )
          ]),
        ),
      ),
    );
  }
}
