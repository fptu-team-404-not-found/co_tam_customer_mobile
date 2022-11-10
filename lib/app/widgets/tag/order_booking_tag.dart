import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:co_tam_customer_mobile/app/widgets/icon/service_icon.dart';
import 'package:flutter/material.dart';
import 'package:shadow/shadow.dart';

import '../../utils/routes.dart';

class OrderBookingTag extends StatefulWidget {
  final ServiceIcon iconData;
  final String mainInfo;
  final String subInfo;
  final String extraInfo;
  const OrderBookingTag({Key? key, required this.iconData, required this.mainInfo, required this.subInfo, required this.extraInfo}) : super(key: key);

  @override
  State<OrderBookingTag> createState() => _OrderBookingTagState();
}

class _OrderBookingTagState extends State<OrderBookingTag> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, top: 12, right: 4, bottom: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0, top: 0, right: 15, bottom: 0),
                    child: Shadow(
                      options: const ShadowOptions(offset: Offset(1,2)),
                      child: widget.iconData,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.mainInfo, style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                      const SizedBox(height: 5),
                      Text(widget.subInfo, style: AppText.textGrey,),
                    ],
                  ),
                ],
              ),
              Align(alignment: Alignment.centerRight, child: Text(widget.extraInfo, style: AppText.headingSmall2,)),
            ],
          ),
        ),
        const Divider(
          height: 8,
          thickness: 1,
          indent: 56,
          endIndent: 0,
          color: AppColor.subColor10,
        ),
      ],
    );
  }
}
