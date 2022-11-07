import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../rest_api/rest_api.dart';

class RatingButton extends StatefulWidget {
  const RatingButton({Key? key,required this.id}) : super(key: key);
  final int id;
  @override
  State<RatingButton> createState() => _RatingButtonState(id);
}

class _RatingButtonState extends State<RatingButton> {
  final int id;
  _RatingButtonState(this.id);
  double rating = 1;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: AppColor.primaryColor100,
        padding: const EdgeInsets.all(10.0),
        textStyle: const TextStyle(fontSize: 14),
      ),
      onPressed: () => showRating(),
      child: const Text('Đánh giá', style: TextStyle(color: Colors.black)),
    );
  }

  Widget buildRating() => RatingBar.builder(
        minRating: 1,
        updateOnDrag: true,
        itemPadding: const EdgeInsets.symmetric(horizontal: 2),
        itemSize: 30,
        itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber),
        onRatingUpdate: (rating) => setState(() {
          this.rating = rating;
        }),
      );
  void showRating() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Bạn có hài lòng về dịch vụ?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                buildRating()
              ],
            ),
            actions: [
              TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15.0),
                    backgroundColor: AppColor.primaryColor100,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Đánh giá',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onPressed: () {
                    _rating();
                  }),
            ],
          ));
  void _rating() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'cảm ơn',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(15.0),
                backgroundColor: AppColor.primaryColor100,
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Hoàn Thành',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: () {
                UpdateRating(id,4, context);
                setState((){});
                Navigator.pop(context);
                Navigator.pop(context);

              }),
        ],
      ));
}
