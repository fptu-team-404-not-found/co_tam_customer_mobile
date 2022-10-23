import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:co_tam_customer_mobile/app/widgets/icon/service_icon.dart';
import 'package:flutter/material.dart';
import 'package:shadow/shadow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../button/order_rating_tag_button.dart';

class OrderRatingTag extends StatefulWidget {
  final ServiceIcon iconData;
  final String mainInfo;
  final String timeInfo;
  final String priceInfo;
  final String dateInfo;
  final OrderRatingTagButton extraInfo;
  const OrderRatingTag({Key? key, required this.iconData, required this.mainInfo, required this.dateInfo, required this.priceInfo, required this.timeInfo, required this.extraInfo}) : super(key: key);

  @override
  State<OrderRatingTag> createState() => _OrderRatingTagState();
}

class _OrderRatingTagState extends State<OrderRatingTag> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, top: 12, right: 4, bottom: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      Text(widget.mainInfo, style: AppText.textBlack2,),
                      const SizedBox(height: 5),
                      Text(widget.timeInfo, style: AppText.textGrey,),
                      const SizedBox(height: 1),
                      Text(widget.priceInfo, style: AppText.textGrey,),
                      const SizedBox(height: 1),
                      Text(widget.dateInfo, style: AppText.textGrey,),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: widget.extraInfo,
              ),
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
