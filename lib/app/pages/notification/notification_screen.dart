import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/constanst.dart';
import '../../widgets/appbar/top_app_bar.dart';
import '../../widgets/tag/notification_tag.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
  GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(preferredSize: Size.fromHeight(56), child: TopAppBar('THÔNG BÁO', FontAwesomeIcons.circleArrowLeft, null, null)),
        body: RefreshIndicator(
          key: _refreshIndicatorKey,
          color: Colors.white,
          backgroundColor: AppColor.primaryColor100,
          strokeWidth: 2.0,
          onRefresh: () async {
            // Replace this delay with the code to be executed during refresh
            // and return a Future when code finishs execution.
            return Future<void>.delayed(const Duration(seconds: 3));
          },
          // Pull from top to show refresh indicator.
          child: ListView.builder(
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return const NotificationTag(iconData: FontAwesomeIcons.info, mainInfo: 'Dọn dẹp vệ sinh nhà cửa', subInfo: 'Xác nhận đơn thành công', extraInfo: '21-10-2022, 23:00 - 24:00');
            },
          ),
        ),
    );
  }
}
