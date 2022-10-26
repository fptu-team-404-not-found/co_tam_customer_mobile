import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/cupertino.dart';

import '../../icon/service_icon.dart';
import '../../state/order_status.dart';
import '../person_information_card.dart';

class OrderLoadingProcessState extends StatefulWidget {
  const OrderLoadingProcessState({Key? key}) : super(key: key);

  @override
  State<OrderLoadingProcessState> createState() => _OrderLoadingProcessStateState();
}

class _OrderLoadingProcessStateState extends State<OrderLoadingProcessState> {
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
          padding: const EdgeInsets.all(25.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Dọn dẹp nhà cửa', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold

              )),
              Text('20:00 - 20:30' ,style: TextStyle(
                fontWeight: FontWeight.w900,
                color: AppColor.primaryColor100,
                fontSize: 30,

              )),
              Text('Đã có người nhận đơn'),
            ],),

            SizedBox(
              height: 80,
                width: 80,
                child: list[1])
          ],

          ),
        ),
        OrderStatus(),
        SizedBox(height: 12),
        PersonInformationCard(),
      ],
    );
  }
}
