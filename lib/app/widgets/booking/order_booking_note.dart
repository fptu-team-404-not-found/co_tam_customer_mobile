import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }

class OrderBookingNote extends StatefulWidget {
  const OrderBookingNote({Key? key}) : super(key: key);

  @override
  State<OrderBookingNote> createState() => _OrderBookingNoteState();
}

class _OrderBookingNoteState extends State<OrderBookingNote> {
  TextEditingController textarea = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,

      child: Transform.translate(
        offset: const Offset(0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Ghi chú", style: AppText.textBlack3,),

            Container(
              width: 350,
              child: TextField(
                  controller: textarea,
                  keyboardType: TextInputType.multiline,
                  maxLines: 4,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
