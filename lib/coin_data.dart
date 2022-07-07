import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future getCoinData() async {
    Response response = await get(Uri.parse(
        'https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=D94B0AD3-8374-43D6-9E49-824CE40A5EBB'));
    var body;
    try {
      body = jsonDecode(response.body);
    } catch (e) {
      print(response.statusCode);
    }
    return body['rate'];
  }
}
