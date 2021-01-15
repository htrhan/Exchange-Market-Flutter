import 'package:flutter/material.dart';
import 'package:guncel_altin/components/body.dart';
import 'package:guncel_altin/models/services.dart';

class CurrencyConvert extends StatefulWidget {
  CurrencyConvert({Key key}) : super(key: key);

  @override
  _CurrencyConvertState createState() => _CurrencyConvertState();
}

class _CurrencyConvertState extends State<CurrencyConvert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Currency>(
        future: getCurrency(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Birim'),
                        Text('Güncelleme'),
                        Text('Alış'),
                        Text('Satış'),
                      ],
                    ),
                  ),
                ),
                CurrencyMoney(
                  money: '${snapshot.data.usd.name}',
                  buying: '${snapshot.data.usd.buying}',
                  selling: '${snapshot.data.usd.selling}',
                ),
                CurrencyMoney(
                  money: '${snapshot.data.euro.name}',
                  buying: '${snapshot.data.euro.buying}',
                  selling: '${snapshot.data.euro.selling}',
                ),
              ],
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
