import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../rest_api/rest_api.dart';
import '../../utils/constanst.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key, required this.total}) : super(key: key);
  final double? total;

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  late int checkPayment = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children:const [
              Padding(
                  padding: EdgeInsets.all(8),
                  child: FaIcon(FontAwesomeIcons.cashRegister,
                      color: AppColor.primaryColor100, size: 30)),
              Text('Chọn phương thức thanh toán',
                  style: TextStyle(
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
                    onPressed: () async {
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      setState((){
                        checkPayment = 1;
                      });
                      await prefs.setInt("paymentID", checkPayment);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(checkPayment == 1 ? AppColor.primaryColor30 : Colors.white),
                      shape: MaterialStateProperty.all(BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                    ),
                    child: const Text("Tiền Mặt",
                        style: TextStyle(
                            color: Colors.black , fontSize: 20)),
                  ),
                ),
                SizedBox(
                  height: 50, //height of button
                  width: 140,
                  child: OutlinedButton(
                    onPressed: () async {
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      double? Total;
                      double? eWalet = prefs.getDouble('eWalet');
                      double? voucherValue = await GetVoucherValue();
                      Total = eWalet! - widget.total! + voucherValue!;
                      print("gia: " + Total.toString());
                      if (Total < 0) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(content: Text("Không đủ tiền trong tài khoản")));
                        await prefs.setInt("paymentID", 2);
                      } else {
                        await prefs.setInt("paymentID", 2);
                      }
                      setState((){
                        checkPayment = (Total! < 0) ? 3 : 2;
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(checkPayment == 2 ? AppColor.primaryColor30 : checkPayment == 3 ? Colors.redAccent : Colors.white),
                      shape: MaterialStateProperty.all(BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                    ),
                    child: const Text("Ví",
                        style: TextStyle(
                            color: Colors.black, fontSize: 20)),
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
