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
                  money: 'USDTRY',
                  buying: '${snapshot.data.usd.buying}',
                  selling: '${snapshot.data.usd.selling}',
                  descMoney: '${snapshot.data.usd.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'EURTRY',
                  buying: '${snapshot.data.euro.buying}',
                  selling: '${snapshot.data.euro.selling}',
                  descMoney: '${snapshot.data.euro.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'AUDTRY',
                  buying: '${snapshot.data.aud.buying}',
                  selling: '${snapshot.data.aud.selling}',
                  descMoney: '${snapshot.data.aud.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'DKKTRY',
                  buying: '${snapshot.data.dkk.buying}',
                  selling: '${snapshot.data.dkk.selling}',
                  descMoney: '${snapshot.data.dkk.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'GBPTRY',
                  buying: '${snapshot.data.gbp.buying}',
                  selling: '${snapshot.data.gbp.selling}',
                  descMoney: '${snapshot.data.gbp.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'CHFTRY',
                  buying: '${snapshot.data.chf.buying}',
                  selling: '${snapshot.data.chf.selling}',
                  descMoney: '${snapshot.data.chf.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'SEKTRY',
                  buying: '${snapshot.data.sek.buying}',
                  selling: '${snapshot.data.sek.selling}',
                  descMoney: '${snapshot.data.sek.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'CADTRY',
                  buying: '${snapshot.data.cad.buying}',
                  selling: '${snapshot.data.cad.selling}',
                  descMoney: '${snapshot.data.cad.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'JPYTRY',
                  buying: '${snapshot.data.jpy.buying}',
                  selling: '${snapshot.data.jpy.selling}',
                  descMoney: '${snapshot.data.jpy.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'RUBTRY',
                  buying: '${snapshot.data.rub.buying}',
                  selling: '${snapshot.data.rub.selling}',
                  descMoney: '${snapshot.data.rub.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'CNYTRY',
                  buying: '${snapshot.data.cny.buying}',
                  selling: '${snapshot.data.cny.selling}',
                  descMoney: '${snapshot.data.cny.name}',
                  updateTime: '${snapshot.data.updateDate}',
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
