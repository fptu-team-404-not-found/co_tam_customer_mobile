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
          padding: const EdgeInsets.only(left: 4, top: 12, right: 4, bottom: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FaIcon(widget.iconData),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(4),
                      child: Center(child: Text(widget.mainInfo))),
                  Center(child: Text(widget.subInfo))
                ],
              ),
              Align(alignment: Alignment.centerRight, child: Text(widget.extraInfo)),
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
