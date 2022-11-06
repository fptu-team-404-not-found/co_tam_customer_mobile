import 'package:co_tam_customer_mobile/app/json_to_dart/user/user_info.dart';
import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:co_tam_customer_mobile/app/widgets/account/account_button.dart';
import 'package:flutter/material.dart';
import 'package:date_time_format/date_time_format.dart';
import '../../pages/account/account_update.dart';
import '../../pages/login/login_screen.dart';
import '../../rest_api/rest_api.dart';
import 'account_info_bar.dart';

class AccountHead extends StatefulWidget {
  const AccountHead({Key? key}) : super(key: key);

  @override
  State<AccountHead> createState() => _AccountHeadState();
}

class _AccountHeadState extends State<AccountHead> {
  @override
  Widget build(BuildContext context) {
    setState((){});
    return Padding(
      padding: const EdgeInsets.only(bottom: 45.0),
      child: SingleChildScrollView(
        child: FutureBuilder<UserInfo>(
          future: fetchInfo(),
          builder: (context, snapshot){
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.deepPurpleAccent,
                ),
              );
            }
            if(snapshot.hasData){
              return Column(
                children: [
                  SizedBox(
                    height: 280,
                    child: Stack(
                      children: [
                        Container(
                          color: AppColor.primaryColor100,
                          height: 175,
                          width: double.infinity,
                        ),
                        Center(
                          child: Positioned(
                            top: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 12),
                                  width: 140,
                                  height: 140,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white, width: 8),
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage("snapshot.data!.data!.avatar!.toString()"))),
                                ),
                                Text(
                                  snapshot.data!.data!.name.toString(),
                                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Divider(
                    height: 8,
                    thickness: 1,
                    color: AppColor.subColor30,
                  ),
                  AccountInfoBar(textData: snapshot.data!.data!.dateOfBirth.toString().substring(0,10), iconData: Icons.cake,),
                  const Divider(
                    height: 8,
                    thickness: 1,
                    color: AppColor.subColor30,
                  ),
                  AccountInfoBar(textData: snapshot.data!.data!.phone.toString(), iconData: Icons.phone,),
                  const Divider(
                    height: 8,
                    thickness: 1,
                    color: AppColor.subColor30,
                  ),
                  AccountInfoBar(textData: snapshot.data!.data!.email.toString(), iconData: Icons.mail,),
                  const Divider(
                    height: 8,
                    thickness: 1,
                    color: AppColor.subColor30,
                  ),
                  AccountInfoBar(textData: snapshot.data!.data!.eWallet.toString(), iconData: Icons.account_balance_wallet,),
                  const Divider(
                    height: 8,
                    thickness: 1,
                    color: AppColor.subColor30,
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          /*final dateTime = DateTime(snapshot.data!.data!.dateOfBirth!.);
                          dateTime.format();
                          print("time: " + dateTime.toString());*/
                        },
                        child: const AccountButton(textData: "Voucher")
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => UpdateInfo(
                                    name: snapshot.data!.data!.name!.toString(),
                                    phone: snapshot.data!.data!.phone!.toString(),
                                    dateOfBirth: snapshot.data!.data!.dateOfBirth!.toString(),
                                    email: snapshot.data!.data!.email!.toString(),
                                    linkFacebook: snapshot.data!.data!.linkFacebook!.toString(),
                                    avatar: "snapshot.data!.data!.avatar!.toString()",
                                    eWallet: snapshot.data!.data!.eWallet!,
                                    active: true
                                )));
                          },
                          child: const AccountButton(textData: "Cập nhật")
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(builder: (context) => const LoginScreen()), (
                                route) => false);
                          },
                          child: const AccountButton(textData: "Đăng xuất")
                      ),
                    ],
                  )
                ],
              );
            }
            return const Center(
                child: Text("lỗi",
                )
            );
          },
        ),
      )
    );
  }
}

