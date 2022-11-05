import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VoucherDetailInfor extends StatefulWidget {
  final String title;
  final String content;
  const VoucherDetailInfor({Key? key, required this.title, required this.content}) : super(key: key);

  @override
  State<VoucherDetailInfor> createState() => _VoucherDetailInforState();
}

class _VoucherDetailInforState extends State<VoucherDetailInfor> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Padding(
            padding: const EdgeInsets.only(left: 5, bottom: 8),
            child: Text(
              widget.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child:  Text(
              widget.content, overflow: TextOverflow.clip,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),

    );
  }
}
