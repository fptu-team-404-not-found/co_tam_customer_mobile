import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconTextInformation extends StatefulWidget {
  final String informationDetails;
  final IconData? icon;

  const IconTextInformation(this.icon, {Key? key, required this.informationDetails}) : super(key: key);

  @override
  State<IconTextInformation> createState() => _IconTextInformationState();
}

class _IconTextInformationState extends State<IconTextInformation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.all(8), child: FaIcon(widget.icon, color: AppColor.primaryColor100, size: 20)),
          Text(widget.informationDetails, style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            color: AppColor.subColor100)
          )
        ],
      ),
    );
  }
}
