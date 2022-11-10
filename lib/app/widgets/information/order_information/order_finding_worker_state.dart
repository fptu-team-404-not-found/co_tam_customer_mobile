import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/cupertino.dart';

class OrderFindingCustomerState extends StatefulWidget {
   const OrderFindingCustomerState({Key? key}) : super(key: key);

  @override
  State<OrderFindingCustomerState> createState() => _OrderFindingCustomerStateState();
}

class _OrderFindingCustomerStateState extends State<OrderFindingCustomerState> {

  _OrderFindingCustomerStateState();
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 18.0, top: 15),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text('Dọn dẹp nhà cửa', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            )),
          ),
        ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      height: 230,
      width: 350,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      border: Border.all(
      color: AppColor.primaryColor50,
      width: 1,
      ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
             width: 260,
            child: Text('Cô Tấm đang tìm người giúp việc cho bạn, vui lòng chờ ít phút nhé <3 !' , style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset('assets/icons/finding_worker_icon.png'),
          ),
        ],
      )
      ),
    )
      ],
    );
  }
}
