import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import '../../constants.dart';

class CurrencyConverterPage extends StatefulWidget {
  @override
  _CurrencyConverterPageState createState() => _CurrencyConverterPageState();
}

class _CurrencyConverterPageState extends State<CurrencyConverterPage> {
  final userInput = TextEditingController();
  List<String> currencies;
  String fromCurrency = "TRY";
  String toCurrency = "USD";
  String result;

  @override
  void initState() {
    super.initState();
    _getCurrencies();
  }

  Future<String> _getCurrencies() async {
    String uri = "https://api.exchangeratesapi.io/latest?base=MXN";
    var response = await http
        .get(Uri.encodeFull(uri), headers: {"Accept": "application/json"});
    var responseBody = json.decode(response.body);
    Map currencyMap = responseBody['rates'];

    setState(() {
      currencies = currencyMap.keys.toList();
    });
    //print(currencies);
    return "Success";
  }

  Future<String> _doConvert() async {
    String uri =
        "https://api.exchangeratesapi.io/latest?base=$fromCurrency&symbols=$toCurrency";
    var response = await http
        .get(Uri.encodeFull(uri), headers: {"Accept": "application/json"});
    var responseBody = json.decode(response.body);
    setState(() {
      result =
          (double.parse(userInput.text) * (responseBody["rates"][toCurrency]))
              .toStringAsFixed(2);
    });
    // print(result);
    return "Success";
  }

  _onFromChanged(String value) {
    setState(() {
      fromCurrency = value;
    });
  }

  _onToChanged(String value) {
    setState(() {
      toCurrency = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currencies == null
          ? Center(child: CircularProgressIndicator())
          : Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 8.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          right: 8.0,
                          left: 8.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _dropDownMenu(fromCurrency),
                            IconButton(
                              icon: Icon(
                                Icons.compare_arrows,
                                size: 32,
                                color: kTextColor,
                              ),
                              onPressed: _doConvert,
                            ),
                            _dropDownMenu(toCurrency),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Chip(
                          label: result != null
                              ? Text(
                                  result,
                                )
                              : Text(""),
                        ),
                      ),
                      ListTile(
                        title: TextField(
                          onChanged: (result) {
                            setState(() {
                              _doConvert();
                            });
                          },
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: kPrimaryColor, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: kPrimaryColor, width: 2.0),
                            ),
                          ),
                          controller: userInput,
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  Widget _dropDownMenu(String currencyCategory) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
            color: kPrimaryColor, style: BorderStyle.solid, width: 0.80),
      ),
      child: DropdownButton(
        value: currencyCategory,
        items: currencies
            .map((String value) => DropdownMenuItem(
                  value: value,
                  child: Row(
                    children: <Widget>[
                      Text(value),
                    ],
                  ),
                ))
            .toList(),
        onChanged: (String value) {
          if (currencyCategory == fromCurrency) {
            _onFromChanged(value);
          } else {
            _onToChanged(value);
          }
        },
      ),
    );
  }
}
