import 'package:flutter/material.dart';

class CurrencyMoney extends StatelessWidget {
  const CurrencyMoney({Key key, this.money, this.buying, this.selling})
      : super(key: key);
  final String money;
  final String selling;
  final String buying;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(money),
              Text(
                  '${formatDateTime(DateTime.parse(DateTime.now().toString()))}'),
              Text(selling),
              Text(buying),
            ]),
            Divider(height: 2, color: Colors.red),
          ],
        ),
      ),
    );
  }
}

String formatDateTime(DateTime createDateTime) {
  return '${createDateTime.hour}:${createDateTime.minute}';
}
