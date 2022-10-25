import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationTag extends StatefulWidget {
  final IconData iconData;
  final String mainInfo;
  final String subInfo;
  final String extraInfo;
  const NotificationTag({Key? key, required this.iconData, required this.mainInfo, required this.subInfo, required this.extraInfo}) : super(key: key);

  @override
  State<NotificationTag> createState() => _NotificationTagState();
}

class _NotificationTagState extends State<NotificationTag> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, top: 12, right: 4, bottom: 6),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0, top: 0, right: 15, bottom: 0),
                    child: Ink(
                      width: 20,
                      decoration: const ShapeDecoration(
                        color: AppColor.primaryColor100,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: FaIcon(widget.iconData, size: 9),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.mainInfo, style: AppText.textBlack2,),
                      const SizedBox(height: 5),
                      Text(widget.subInfo, style: AppText.textGrey,),
                    ],
                  ),
                ],
              ),
              Align(alignment: Alignment.centerRight, child: Text(widget.extraInfo, style: AppText.textGrey2,)),
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
