import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:co_tam_customer_mobile/app/widgets/icon/service_icon.dart';
import 'package:flutter/material.dart';

class OrderTag extends StatefulWidget {
  final String mainInfo;
  final String startTime;
  final String? endTime;
  final String extraInfo;
  final int id;
  const OrderTag(
      {Key? key,
      required this.mainInfo,
      required this.startTime,
        this.endTime,
      required this.extraInfo, required this.id})
      : super(key: key);

  @override
  State<OrderTag> createState() => _OrderTagState(id);
}

class _OrderTagState extends State<OrderTag> {
  final id;
  _OrderTagState(this.id);
  @override
  Widget build(BuildContext context) {
  List<ServiceIcon> list = [
    const ServiceIcon(
        title: 'Dọn dẹp',
        size: 50,
        icon: Image(
            image: AssetImage('assets/img/service_icons/vacuum.png')),
        ),
    const ServiceIcon(
        title: 'Khử trùng',
        size: 50,
        icon: Image(
            image: AssetImage('assets/img/service_icons/shield.png')),
        ),
    const ServiceIcon(
        title: 'Sofa - Rèm cửa',
        size: 50,
        icon: Image(
            image: AssetImage('assets/img/service_icons/sofa.png')),
        ),
    const ServiceIcon(
        title: 'Thiết bị lạnh',
        size: 50,
        icon: Image(
            image: AssetImage('assets/img/service_icons/washing.png')),
        ),
  ];
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 4, top: 12, right: 4, bottom: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              list[id - 1],
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(widget.mainInfo, style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),)
                  ),
                  Text('Nhận vào: ${widget.startTime}',style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,

                  ),),
                  if(widget.endTime != null)
                  Text('Hoàn thành: ${widget.endTime}',style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),),
                ],
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    widget.extraInfo,
                    style: const TextStyle(
                      color: AppColor.primaryColor100,
                    ),
                  )),
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
    ;
  }
}
