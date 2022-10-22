import 'package:co_tam_customer_mobile/app/widgets/service_icon.dart';
import 'package:flutter/material.dart';

class ServiceIconList extends StatelessWidget {
  const ServiceIconList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ServiceIcon> icons = [
      const ServiceIcon(size: 50, iconSize: 25, icon: Icons.clean_hands, title:'Dọn dẹp'),
      const ServiceIcon(size: 50, iconSize: 25, icon: Icons.safety_check_outlined, title: 'Khử trùng'),
      const ServiceIcon(size: 50, iconSize: 25, icon: Icons.ac_unit_outlined, title: 'Sofa rèm cửa'),
      const ServiceIcon(size: 50, iconSize: 25, icon: Icons.add_a_photo, title: 'Sofa rèm cửa'),
    ];
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: icons
        )
    );
  }
}
