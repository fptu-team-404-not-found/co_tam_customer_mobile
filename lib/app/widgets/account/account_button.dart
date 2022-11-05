import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountButton extends StatefulWidget {
  final String textData;

  const AccountButton({Key? key, required this.textData}) : super(key: key);

  @override
  State<AccountButton> createState() => _AccountButtonState();
}

class _AccountButtonState extends State<AccountButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 30,
      width: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: AppColor.primaryColor30,
      ),
      child: Text(widget.textData, style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
    );
  }
}
