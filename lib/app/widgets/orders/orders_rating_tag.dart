import 'package:co_tam_customer_mobile/app/widgets/button/rating_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constanst.dart';
import '../icon/service_icon.dart';

class OrderRatingTag extends StatefulWidget {
  final String mainInfo;
  final String startTime;
  final String endTime;
  final String price;
  final int id;
  const OrderRatingTag({Key? key, required this.mainInfo, required this.startTime, required this.endTime, required this.price, required this.id}) : super(key: key);

  @override
  State<OrderRatingTag> createState() => _OrderRatingTagState(id);
}

class _OrderRatingTagState extends State<OrderRatingTag> {
  final int id;
  _OrderRatingTagState(this.id);
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

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding:
          const EdgeInsets.only(left: 4, top: 12, right: 4, bottom: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              list[id- 1],
              const SizedBox(width: 20,),
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
                  Text('Hoàn thành: ${widget.endTime}',style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                  ),),
                  Text('Giá tiền: ${widget.price}',style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),),
                ],
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
