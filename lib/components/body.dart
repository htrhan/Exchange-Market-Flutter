import 'package:flutter/material.dart';
import 'package:guncel_altin/constants.dart';

class CurrencyMoney extends StatelessWidget {
  const CurrencyMoney(
      {Key key,
      this.money,
      this.buying,
      this.selling,
      this.descMoney,
      this.updateTime})
      : super(key: key);
  final String money;
  final String selling;
  final String buying;
  final String descMoney;
  final String updateTime;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(money),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    size: 12.0,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${formatDateTime(DateTime.parse(updateTime.toString()))}',
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
              Text(selling),
              Text(buying),
            ]),
            SizedBox(
              height: 14,
            ),
            Text(
              descMoney,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            Divider(height: 2, color: kPrimaryColor),
          ],
        ),
      ),
    );
  }
}

String formatDateTime(DateTime createDateTime) {
  return '${createDateTime.hour}:${createDateTime.minute}';
}
