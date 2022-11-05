import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constanst.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String value = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: SizedBox(
              width: 265,
              height: 38,
              child: TextField(
              decoration: const InputDecoration(
              border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.only(left: 8),
              hintText: 'Nhập mã voucher'),
              onChanged: (text) {
                  value = text;
                },
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              //1214
              /*foregroundColor: Colors.white,*/
              backgroundColor: AppColor.primaryColor100,
              padding: const EdgeInsets.all(10.0),
              textStyle: const TextStyle(fontSize: 14),
            ),
            onPressed: null,
            child: const Text('Tìm kiếm', style: TextStyle(
              color: Colors.white
            )),
          )
        ],
      ),
    );
  }
}
