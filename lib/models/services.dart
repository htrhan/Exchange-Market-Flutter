// To parse this JSON data, do
//
//     final currency = currencyFromJson(jsonString);
import 'package:http/http.dart' as http;
import 'dart:convert';

Currency currencyFromJson(String str) => Currency.fromJson(json.decode(str));

String currencyToJson(Currency data) => json.encode(data.toJson());

class Currency {
  Currency({
    this.updateDate,
    this.usd,
    this.aud,
    this.dkk,
    this.euro,
    this.gbp,
    this.chf,
    this.sek,
    this.cad,
    this.kwd,
    this.nok,
    this.sar,
    this.jpy,
    this.bgn,
    this.ron,
    this.rub,
    this.irr,
    this.cny,
    this.rs,
    this.qar,
    this.sdr,
    this.onsAltin,
    this.gramAltin,
    this.ceyrekAltin,
    this.yarimAltin,
    this.tamAltin,
    this.cumhuriyetAltini,
    this.ataAltin,
    this.resatAltin,
    this.hamitAltin,
    this.ikibucukAltin,
    this.gremseAltin,
    this.besliAltin,
    this.the14AyarAltin,
    this.the18AyarAltin,
    this.the22AyarBilezik,
    this.gumus,
  });

  DateTime updateDate;
  The14AyarAltin usd;
  The14AyarAltin aud;
  The14AyarAltin dkk;
  The14AyarAltin euro;
  The14AyarAltin gbp;
  The14AyarAltin chf;
  The14AyarAltin sek;
  The14AyarAltin cad;
  The14AyarAltin kwd;
  The14AyarAltin nok;
  The14AyarAltin sar;
  The14AyarAltin jpy;
  The14AyarAltin bgn;
  The14AyarAltin ron;
  The14AyarAltin rub;
  The14AyarAltin irr;
  The14AyarAltin cny;
  The14AyarAltin rs;
  The14AyarAltin qar;
  Sdr sdr;
  The14AyarAltin onsAltin;
  The14AyarAltin gramAltin;
  The14AyarAltin ceyrekAltin;
  The14AyarAltin yarimAltin;
  The14AyarAltin tamAltin;
  The14AyarAltin cumhuriyetAltini;
  The14AyarAltin ataAltin;
  The14AyarAltin resatAltin;
  The14AyarAltin hamitAltin;
  The14AyarAltin ikibucukAltin;
  The14AyarAltin gremseAltin;
  The14AyarAltin besliAltin;
  The14AyarAltin the14AyarAltin;
  The14AyarAltin the18AyarAltin;
  The14AyarAltin the22AyarBilezik;
  The14AyarAltin gumus;

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        updateDate: DateTime.parse(json["Update_Date"]),
        usd: The14AyarAltin.fromJson(json["USD"]),
        aud: The14AyarAltin.fromJson(json["AUD"]),
        dkk: The14AyarAltin.fromJson(json["DKK"]),
        euro: The14AyarAltin.fromJson(json["EURO"]),
        gbp: The14AyarAltin.fromJson(json["GBP"]),
        chf: The14AyarAltin.fromJson(json["CHF"]),
        sek: The14AyarAltin.fromJson(json["SEK"]),
        cad: The14AyarAltin.fromJson(json["CAD"]),
        kwd: The14AyarAltin.fromJson(json["KWD"]),
        nok: The14AyarAltin.fromJson(json["NOK"]),
        sar: The14AyarAltin.fromJson(json["SAR"]),
        jpy: The14AyarAltin.fromJson(json["JPY"]),
        bgn: The14AyarAltin.fromJson(json["BGN"]),
        ron: The14AyarAltin.fromJson(json["RON"]),
        rub: The14AyarAltin.fromJson(json["RUB"]),
        irr: The14AyarAltin.fromJson(json["IRR"]),
        cny: The14AyarAltin.fromJson(json["CNY"]),
        rs: The14AyarAltin.fromJson(json["RS"]),
        qar: The14AyarAltin.fromJson(json["QAR"]),
        sdr: Sdr.fromJson(json["SDR"]),
        onsAltin: The14AyarAltin.fromJson(json["ons_altin"]),
        gramAltin: The14AyarAltin.fromJson(json["gram_altin"]),
        ceyrekAltin: The14AyarAltin.fromJson(json["ceyrek_altin"]),
        yarimAltin: The14AyarAltin.fromJson(json["yarim_altin"]),
        tamAltin: The14AyarAltin.fromJson(json["tam_altin"]),
        cumhuriyetAltini: The14AyarAltin.fromJson(json["cumhuriyet_altini"]),
        ataAltin: The14AyarAltin.fromJson(json["ata_altin"]),
        resatAltin: The14AyarAltin.fromJson(json["resat_altin"]),
        hamitAltin: The14AyarAltin.fromJson(json["hamit_altin"]),
        ikibucukAltin: The14AyarAltin.fromJson(json["ikibucuk_altin"]),
        gremseAltin: The14AyarAltin.fromJson(json["gremse_altin"]),
        besliAltin: The14AyarAltin.fromJson(json["besli_altin"]),
        the14AyarAltin: The14AyarAltin.fromJson(json["14_ayar_altin"]),
        the18AyarAltin: The14AyarAltin.fromJson(json["18_ayar_altin"]),
        the22AyarBilezik: The14AyarAltin.fromJson(json["22_ayar_bilezik"]),
        gumus: The14AyarAltin.fromJson(json["gumus"]),
      );

  Map<String, dynamic> toJson() => {
        "Update_Date": updateDate.toIso8601String(),
        "USD": usd.toJson(),
        "AUD": aud.toJson(),
        "DKK": dkk.toJson(),
        "EURO": euro.toJson(),
        "GBP": gbp.toJson(),
        "CHF": chf.toJson(),
        "SEK": sek.toJson(),
        "CAD": cad.toJson(),
        "KWD": kwd.toJson(),
        "NOK": nok.toJson(),
        "SAR": sar.toJson(),
        "JPY": jpy.toJson(),
        "BGN": bgn.toJson(),
        "RON": ron.toJson(),
        "RUB": rub.toJson(),
        "IRR": irr.toJson(),
        "CNY": cny.toJson(),
        "RS": rs.toJson(),
        "QAR": qar.toJson(),
        "SDR": sdr.toJson(),
        "ons_altin": onsAltin.toJson(),
        "gram_altin": gramAltin.toJson(),
        "ceyrek_altin": ceyrekAltin.toJson(),
        "yarim_altin": yarimAltin.toJson(),
        "tam_altin": tamAltin.toJson(),
        "cumhuriyet_altini": cumhuriyetAltini.toJson(),
        "ata_altin": ataAltin.toJson(),
        "resat_altin": resatAltin.toJson(),
        "hamit_altin": hamitAltin.toJson(),
        "ikibucuk_altin": ikibucukAltin.toJson(),
        "gremse_altin": gremseAltin.toJson(),
        "besli_altin": besliAltin.toJson(),
        "14_ayar_altin": the14AyarAltin.toJson(),
        "18_ayar_altin": the18AyarAltin.toJson(),
        "22_ayar_bilezik": the22AyarBilezik.toJson(),
        "gumus": gumus.toJson(),
      };
}

class The14AyarAltin {
  The14AyarAltin({
    this.buying,
    this.selling,
    this.type,
    this.name,
  });

  String buying;
  String selling;
  Type type;
  String name;

  factory The14AyarAltin.fromJson(Map<String, dynamic> json) => The14AyarAltin(
        buying: json["Buying"],
        selling: json["Selling"],
        type: typeValues.map[json["Type"]],
        name: json["Name"],
      );

  Map<String, dynamic> toJson() => {
        "Buying": buying,
        "Selling": selling,
        "Type": typeValues.reverse[type],
        "Name": name,
      };
}

enum Type { GOLD, EXCHANGE }

final typeValues = EnumValues({"Exchange": Type.EXCHANGE, "Gold": Type.GOLD});

class Sdr {
  Sdr({
    this.buying,
    this.selling,
    this.type,
    this.name,
  });

  String buying;
  List<dynamic> selling;
  Type type;
  String name;

  factory Sdr.fromJson(Map<String, dynamic> json) => Sdr(
        buying: json["Buying"],
        selling: List<dynamic>.from(json["Selling"].map((x) => x)),
        type: typeValues.map[json["Type"]],
        name: json["Name"],
      );

  Map<String, dynamic> toJson() => {
        "Buying": buying,
        "Selling": List<dynamic>.from(selling.map((x) => x)),
        "Type": typeValues.reverse[type],
        "Name": name,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}

Future<Currency> getCurrency() async {
  String url = 'https://finans.truncgil.com/v2/today.json';

  final response = await http.get('$url');
  String body = utf8.decode(response.bodyBytes);
  print(body);
  return currencyFromJson(body);
}
