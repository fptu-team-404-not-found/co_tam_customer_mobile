import 'package:flutter/material.dart';

import '../../rest_api/rest_api.dart';
import '../../utils/constanst.dart';
import '../../utils/routes.dart';
import '../../widgets/account/account_field_update.dart';
import '../home/home_screen.dart';
import 'account_main.dart';


class UpdateInfo extends StatefulWidget {
  const UpdateInfo({Key? key, this.name, this.phone, this.dateOfBirth, this.email, this.linkFacebook, this.avatar,
  this.eWallet, this.active}) : super(key: key);
  final name, phone, dateOfBirth, email, linkFacebook, avatar;
  final double? eWallet;
  final bool? active;

  @override
  State<UpdateInfo> createState() => _UpdateInfoState(name, phone, dateOfBirth, email, linkFacebook, avatar, eWallet, active);
}

class _UpdateInfoState extends State<UpdateInfo> {
  String? name;
  String? phone, dateOfBirth, email, linkFacebook, avatar;
  final double? eWallet;
  final bool? active;
  _UpdateInfoState(this.name, this.phone, this.dateOfBirth, this.email, this.linkFacebook, this.avatar,
      this.eWallet, this.active);
  static TextEditingController _nameController = TextEditingController();
  static TextEditingController _dateBirthController = TextEditingController();
  static TextEditingController _phoneNController = TextEditingController();
  static TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    _nameController = TextEditingController(text: name.toString());
    _phoneNController = TextEditingController(text: '${phone}');
    _emailController = TextEditingController(text: '${email}');
    _dateBirthController = TextEditingController(text: '${dateOfBirth}');
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 10,),
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: AppColor.primaryColor30),
                  onPressed: () {
                    setState((){});
                    Navigator.pushNamed(context, Routes.mainScreen0);
                    /*Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => const HomeScreen()), (
                        route) => false);*/
                  },
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: ClipRRect(
                      borderRadius:
                      const BorderRadius.all(Radius.circular(80.0)),
                      child: Image.network(avatar.toString()),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    child: Column(
                      children: [
                        Text(name.toString(), style: const TextStyle(fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold),textAlign:  TextAlign.center,),
                        const Text('Cập nhật thông tin', style: TextStyle(fontSize: 18, color: Colors.black54),textAlign:  TextAlign.center)
                      ],
                    ),
                  )
                ],
              ),
            ),
            FieldUpdate(title: "Họ và tên", conroller: _nameController,hintText: name.toString(),),
            FieldUpdate(title: "Ngày sinh", conroller: _dateBirthController,hintText: dateOfBirth.toString(),),
            FieldUpdate(title: "Điện thoại", conroller: _phoneNController,hintText: phone.toString(),),
            FieldUpdate(title: "Email", conroller: _emailController,hintText: email.toString(),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 20, 25, 0),
                  child: ElevatedButton(
                    onPressed: (){
                      setState((){
                        updateUserInfo(_nameController.text, _phoneNController.text,
                            _dateBirthController.text,
                            _emailController.text, linkFacebook, avatar, eWallet, context);
                        name = _nameController.text;
                        phone = _phoneNController.text;
                        dateOfBirth = _dateBirthController.text;
                        email = _emailController.text;
                      });
                    },
                    child: const Text('Cập nhật', style: TextStyle(color: Colors.black),),
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(
                          AppColor.primaryColor30),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              //height: MediaQuery.of(context).padding.bottom,
              height: 70,//MediaQuery.of(context).padding.bottom,
            ),
          ],
        ),
      ),
    );
  }
}
