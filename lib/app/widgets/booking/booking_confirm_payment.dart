import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constanst.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                  padding: EdgeInsets.all(8),
                  child: FaIcon(FontAwesomeIcons.cashRegister,
                      color: AppColor.primaryColor100, size: 30)),
              Text('Chọn phương thức thanh toán',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      color: AppColor.subColor100)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50, //height of button
                  width: 140,
                  child: OutlinedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                    ),
                    child: const Text("Ví",
                        style: TextStyle(
                            color: AppColor.primaryColor100, fontSize: 20)),
                  ),
                ),
                SizedBox(
                  height: 50, //height of button
                  width: 140,
                  child: OutlinedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                    ),
                    child: const Text("Tiền mặt",
                        style: TextStyle(
                            color: AppColor.primaryColor100, fontSize: 20)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
