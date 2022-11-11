import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/cupertino.dart';

import '../../icon/service_icon.dart';
import '../../state/order_status.dart';
import '../person_information_card.dart';

class OrderLoadingProcessState extends StatefulWidget {
  const OrderLoadingProcessState({Key? key, required this.serviceID, required this.orderState, required this.startTime, required this.endTime, required this.staffName, required this.rating,  this.avatar}) : super(key: key);
  final int? serviceID, orderState;
  final startTime, endTime, staffName, rating;
  final String? avatar;

  @override
  State<OrderLoadingProcessState> createState() => _OrderLoadingProcessStateState();
}

class _OrderLoadingProcessStateState extends State<OrderLoadingProcessState> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(sName[widget.serviceID!].name.toString(), style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold

              )),
              Text("${widget.startTime} - ..." ,style: const TextStyle(
                fontWeight: FontWeight.w900,
                color: AppColor.primaryColor100,
                fontSize: 30,

              )),
              Text(stateName[widget.orderState!].name.toString()),
            ],),

            SizedBox(
              height: 80,
                width: 80,
                child: ServiceIcon(
                  title: sName[widget.serviceID!].name.toString(),
                  size: 50,
                  icon: Image.network( widget.avatar == null ? 'https://danhgiatot.cdn.vccloud.vn/wp-content/uploads/2022/10/meme-meo-cuoi-min.jpg' :
                  widget.avatar.toString()),
                ))
          ],

          ),
        ),
        OrderStatus(orderState: widget.orderState!),
        const SizedBox(height: 12),
        PersonInformationCard(staffName: widget.staffName!, rating: widget.rating!),
      ],
    );
  }
  
  List <orderStateName> stateName = [
    orderStateName(name: ''),
    orderStateName(name: ''),  // bo k dung // index >< id
    orderStateName(name: 'Đã có người nhận đơn'),
    orderStateName(name: 'nhân viên đang trên đường tới'),
    orderStateName(name: 'nhan viên đang thực hiện công việc'),
    orderStateName(name: 'Hoàn thành dịch vụ'),
    orderStateName(name: 'Xác nhận đã hoàn thành'),
  ];
  
  List <serviceName> sName = [
    serviceName(name: '', icon: ''), // bo k dung // index >< id
    serviceName(name: 'Dọn dẹp vệ sinh', icon: 'assets/img/service_icons/vacuum.png'),
    serviceName(name: 'Khử trùng nhà cửa', icon: 'assets/img/service_icons/shield.png'),
    serviceName(name: 'Sofa - Rèm cửa', icon: 'assets/img/service_icons/sofa.png'),
    serviceName(name: 'Thiết bị lạnh', icon: 'assets/img/service_icons/washing.png'),
  ];
}
class serviceName{
  String name;
  String icon;
  serviceName({required this.name, required this.icon});
}
class orderStateName{
  String name;
  orderStateName({required this.name});
}