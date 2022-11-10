import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:co_tam_customer_mobile/app/widgets/booking/extra_service_list.dart';
import 'package:flutter/material.dart';

class OrderBookingExtraService extends StatefulWidget {
  const OrderBookingExtraService({Key? key, required this.id}) : super(key: key);
  final id;

  @override
  State<OrderBookingExtraService> createState() => _OrderBookingExtraServiceState();
}

class _OrderBookingExtraServiceState extends State<OrderBookingExtraService> {
  String? mainService;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform.translate(
              offset: const Offset(25, 0),
              child: const Text("Chọn dịch vụ thêm", style: AppText.textBlack3,),
            ),
            const SizedBox(height: 20),
            ExtraServiceList(id : widget.id),
          ],
        ),
      );
  }
}
