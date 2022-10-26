import 'package:co_tam_customer_mobile/app/pages/order/order_booking_screen.dart';
import 'package:co_tam_customer_mobile/app/pages/order/order_history.dart';
import 'package:co_tam_customer_mobile/app/pages/order/order_rating.dart';
import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';



class TabControllerWidget extends StatefulWidget {
  const TabControllerWidget({Key? key}) : super(key: key);

  @override
  TabControllerWidgetState createState() => TabControllerWidgetState();
}

class TabControllerWidgetState extends State<TabControllerWidget>
    with SingleTickerProviderStateMixin {
  late final tabController =
  TabController(length: 3, vsync: this, initialIndex: 0);

  @override
  void initState() {
    super.initState();
    tabController.addListener(() {
      if (tabController.previousIndex != tabController.index && !tabController.indexIsChanging) {
        setState(() {});
      }
    });
  }

  List<Padding> get _tabs {
    List<Padding> tabs = const [
      Padding(padding: EdgeInsets.all(8), child: Text('ĐANG ĐẶT', style: TextStyle(
        fontSize: 15
      ))),
      Padding(padding: EdgeInsets.all(8), child: Text('ĐÁNH GIÁ', style: TextStyle(
        fontSize: 15
      ))),
      Padding(padding: EdgeInsets.all(8), child: Text('LỊCH SỬ', style: TextStyle(
        fontSize: 15
      ))),
    ];
    return tabs;
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(56), child: Container(
        width: double.infinity,
        height: 48,
        color: AppColor.secondaryColor100,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TabBar(
                  isScrollable: true,
                  tabs: _tabs,
                  controller: tabController,
                  unselectedLabelColor: AppColor.subColor100,
                  labelColor: AppColor.primaryColor100,
                  indicatorWeight: 2,
                  indicatorColor: AppColor.primaryColor30
              )
            ]
        )
      )),
      body: SizedBox(
        width: double.infinity,
        height: double.maxFinite,
        child: TabBarView(
          controller: tabController,
          children:  const [
            OrderBookingScreen(),
            OrderRatingPage(),
            OrderHistoryPage(),
          ],
        ),
      )
    );
  }
}

