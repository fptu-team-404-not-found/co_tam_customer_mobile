import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatefulWidget {
  final String state;
  const ActionButton({Key? key, required this.state}) : super(key: key);

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {

      return Material(
        color: AppColor.primaryColor100,
        child:  SizedBox(
            height: 56,
            width: double.infinity,
            child: Center(
              child: Text(
                widget.state,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColor.secondaryColor100,
                    fontSize: 24
                ),
              ),
            ),
          ),
      );
    }
}
