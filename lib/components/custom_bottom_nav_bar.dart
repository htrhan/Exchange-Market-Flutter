import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:guncel_altin/screens/components/currency_money.dart';

class CustomButtonNavBar extends StatefulWidget {
  CustomButtonNavBar({Key key}) : super(key: key);

  @override
  _CustomButtonNavBarState createState() => _CustomButtonNavBarState();
}

class _CustomButtonNavBarState extends State<CustomButtonNavBar> {
  List<String> title = ['Döviz', 'Altın', 'Çevirici'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(
            children: [
              Container(
                child: CurrencyConvert(),
              ),
              Container(
                color: Colors.blue,
              ),
              Container(color: Colors.yellow),
            ],
          ),
          bottomNavigationBar: SizedBox(
            height: 58,
            child: TabBar(
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.monetization_on,
                    color: Color(0XFF3A6187),
                  ),
                  child: Text(
                    title[0],
                    style: TextStyle(color: Color(0XFF3A6187)),
                  ),
                ),
                Tab(
                  icon: SvgPicture.asset(
                    'assets/images/gold.svg',
                    height: 24,
                    width: 24,
                  ),
                  child: Text(
                    title[1],
                    style: TextStyle(color: Color(0XFF3A6187)),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.compare_arrows,
                    color: Color(0XFF3A6187),
                  ),
                  child: Text(
                    title[2],
                    style: TextStyle(color: Color(0XFF3A6187)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
