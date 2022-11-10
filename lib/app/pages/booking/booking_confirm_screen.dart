
import 'package:co_tam_customer_mobile/app/rest_api/rest_api.dart';
import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:co_tam_customer_mobile/app/widgets/booking/booking_confirm_service_info.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../widgets/account/account_button.dart';
import '../../widgets/appbar/top_app_bar.dart';
import '../../widgets/booking/booking_confirm_payment.dart';
import '../../widgets/booking/booking_confirm_voucher.dart';
import '../../widgets/booking/order_booking_status.dart';

class BookingConfirmScreen extends StatelessWidget {
  const BookingConfirmScreen({Key? key, required this.id, required this.houseID,required this.houseName, required this.packageID, required this.packageName, required this.extraserviceID, required this.extraserviceName, required this.total}) : super(key: key);
  final int? houseID, packageID, extraserviceID;
  final String? houseName, packageName, extraserviceName;
  final double? total;
  final int? id ;


  @override
  Widget build(BuildContext context) {
    String? title;
    String? content;
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size.fromHeight(56), child: TopAppBar("Confirm", FontAwesomeIcons.circleArrowLeft, null, null)),
      body: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 24),
              const OrderBookingStatus(initState: 1),
              ConfirmServiceInfo(mainServiceTitle:
              id == 1 ? "Dọn dẹp vệ sinh" :
              id == 2 ? "Khử Trùng Nhà" :
              id == 3 ? "Sofa - Rèm Cửa" :
              "Vệ Sinh Thiết Bị Lạnh"  , address: houseName! , package: packageName!, extraService: [extraserviceName!], ),
              const Divider(
                height: 8,
                thickness: 1,
                color: AppColor.subColor30,
              ),
              const BookingConfirmVoucher(),
              const Divider(
                height: 8,
                thickness: 1,
                color: AppColor.subColor30,
              ),
              PaymentMethod(total: total),
              const Divider(
                thickness: 0.5,
                color: AppColor.primaryColor100,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text ('Đơn hàng:', style: TextStyle(color: Colors.black38),),
                          Text (total.toString())
                        ],
                      ),Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text ('Voucher:', style: TextStyle(color: Colors.black38),),
                           Text("0")
                        ],
                      ),Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text ('Tổng:', style: TextStyle(color: Colors.black38),),
                          Text ((total!).toString())
                        ],
                      ),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () async {
                                SharedPreferences prefs = await SharedPreferences.getInstance();
                                int? orderID = null;
                                int? paymentID = prefs.getInt('paymentID');
                                double? eWalet = prefs.getDouble('eWalet');
                                if(paymentID == 1){
                                  orderID = await CreateUserOrder(total, total, houseID, packageID, 5, paymentID, context);
                                  if(extraserviceID != 0){
                                    UpdateOrderDetails(orderID, extraserviceID, context);
                                  }
                                }
                                if(paymentID == 2) {
                                  if((eWalet! - total!) >= 0){
                                    orderID = await CreateUserOrder(total, total, houseID, packageID, 5, paymentID, context);
                                    if(extraserviceID != 0){
                                      UpdateOrderDetails(orderID, extraserviceID, context);
                                    }
                                  } return orderID = null;
                                }
                                if(paymentID == null) {
                                  return orderID = null;
                                }
                                bool? checkOrderDone;
                                if(orderID != null){
                                  title = "Thanh toán thành công";
                                  content = 'Vui lòng chờ nhân viên \n'
                                      'trong giây lát nhé!!\n';
                                } else {
                                  title = paymentID == 2 ? "Số dư trong ví không đủ" : "chọn phương thức thanh toán";
                                  content = paymentID == 2 ? 'Nạp tiền để để tiếp tục thanh toán' : "Không chọn thì sao mà tính tiền";
                                }
                                _dialogBuilder(title, content, context);
                              },
                              child: const AccountButton(textData: "Thanh Toán")
                          ),
                        ],
                      ),
                      const SizedBox(height: 30,)
                    ],
                  )
                ),
              )
            ]
        ),
      ),
    );
  }
  Future<void> _dialogBuilder(String? title, String? content,BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title!),
          content: Text(content!),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme
                    .of(context)
                    .textTheme
                    .labelLarge,
              ),
              child: const Text('Xong', style: TextStyle(color: AppColor.primaryColor100),),
              onPressed: () {
                CLearDataInt();
                CLearDataDouble();
                CLearDataString();
                Navigator.of(context).pop();
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
