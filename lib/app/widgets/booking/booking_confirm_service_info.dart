import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConfirmServiceInfo extends StatefulWidget {
  final String mainServiceTitle;
  final String address;
  final List<String>? extraService;
  const ConfirmServiceInfo({Key? key, required this.mainServiceTitle, required this.address,  this.extraService}) : super(key: key);

  @override
  State<ConfirmServiceInfo> createState() => _ConfirmServiceInfoState();
}

class _ConfirmServiceInfoState extends State<ConfirmServiceInfo> {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
      child: Container(
          height: 300,
          width: 380,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(
              color: AppColor.primaryColor50,
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.mainServiceTitle, style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    color: AppColor.subColor100)
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    const Padding(padding:  EdgeInsets.all(8), child: FaIcon(FontAwesomeIcons.locationDot, color: AppColor.primaryColor100, size: 20)),
                    Text(widget.address, style:  const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        fontStyle: FontStyle.normal,
                        color: AppColor.subColor100)
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(padding:  EdgeInsets.all(8), child: FaIcon(FontAwesomeIcons.clock, color: AppColor.primaryColor100, size: 20)),
                    Text('1 giờ', style:  TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        fontStyle: FontStyle.normal,
                        color: AppColor.subColor100)
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        const Padding(padding:  EdgeInsets.all(8), child: FaIcon(FontAwesomeIcons.boxesPacking, color: AppColor.primaryColor100, size: 20)),
                        Text(widget.mainServiceTitle, style:  const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            fontStyle: FontStyle.normal,
                            color: AppColor.subColor100)
                        ),

                      ],

                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 50.0, bottom: 15),
                      child: Text('Ủi đồ', style:  const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          fontStyle: FontStyle.normal,
                          color: AppColor.subColor100)
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0, bottom: 15),
                      child: Text('Vệ sinh vật nuôi', style:  const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          fontStyle: FontStyle.normal,
                          color: AppColor.subColor100)
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    const Padding(padding:  EdgeInsets.all(8), child: FaIcon(FontAwesomeIcons.noteSticky, color: AppColor.primaryColor100, size: 20)),
                    Text('Ghi chú .... ', style:  const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        fontStyle: FontStyle.normal,
                        color: AppColor.subColor100)
                    ),

                  ],
                ),
              ],
            ),
          )
      ),
    );
  }
}
