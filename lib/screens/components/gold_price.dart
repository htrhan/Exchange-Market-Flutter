import 'package:flutter/material.dart';
import 'package:guncel_altin/components/body.dart';
import 'package:guncel_altin/models/services.dart';

class GoldPrice extends StatefulWidget {
  GoldPrice({Key key}) : super(key: key);

  @override
  _GoldPriceState createState() => _GoldPriceState();
}

class _GoldPriceState extends State<GoldPrice> {
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
                  money: 'ONS',
                  buying: '${snapshot.data.onsAltin.buying}',
                  selling: '${snapshot.data.onsAltin.selling}',
                  descMoney: '${snapshot.data.onsAltin.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'GRAM',
                  buying: '${snapshot.data.gramAltin.buying}',
                  selling: '${snapshot.data.gramAltin.selling}',
                  descMoney: '${snapshot.data.gramAltin.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'ÇEYREK',
                  buying: '${snapshot.data.ceyrekAltin.buying}',
                  selling: '${snapshot.data.ceyrekAltin.selling}',
                  descMoney: '${snapshot.data.ceyrekAltin.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'YARIM',
                  buying: '${snapshot.data.yarimAltin.buying}',
                  selling: '${snapshot.data.yarimAltin.selling}',
                  descMoney: '${snapshot.data.yarimAltin.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'TAM',
                  buying: '${snapshot.data.tamAltin.buying}',
                  selling: '${snapshot.data.tamAltin.selling}',
                  descMoney: '${snapshot.data.tamAltin.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'CUMHURİYET',
                  buying: '${snapshot.data.cumhuriyetAltini.buying}',
                  selling: '${snapshot.data.cumhuriyetAltini.selling}',
                  descMoney: '${snapshot.data.cumhuriyetAltini.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'ATA',
                  buying: '${snapshot.data.ataAltin.buying}',
                  selling: '${snapshot.data.ataAltin.selling}',
                  descMoney: '${snapshot.data.ataAltin.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'RESAT',
                  buying: '${snapshot.data.resatAltin.buying}',
                  selling: '${snapshot.data.resatAltin.selling}',
                  descMoney: '${snapshot.data.resatAltin.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: '14 AYAR',
                  buying: '${snapshot.data.the14AyarAltin.buying}',
                  selling: '${snapshot.data.the14AyarAltin.selling}',
                  descMoney: '${snapshot.data.the14AyarAltin.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: '22 AYAR',
                  buying: '${snapshot.data.the22AyarBilezik.buying}',
                  selling: '${snapshot.data.the22AyarBilezik.selling}',
                  descMoney: '${snapshot.data.the22AyarBilezik.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'GREMSE',
                  buying: '${snapshot.data.gremseAltin.buying}',
                  selling: '${snapshot.data.gremseAltin.selling}',
                  descMoney: '${snapshot.data.gremseAltin.name}',
                  updateTime: '${snapshot.data.updateDate}',
                ),
                CurrencyMoney(
                  money: 'GÜMÜS',
                  buying: '${snapshot.data.gumus.buying}',
                  selling: '${snapshot.data.gumus.selling}',
                  descMoney: '${snapshot.data.gumus.name}',
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
