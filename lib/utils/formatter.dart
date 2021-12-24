import 'package:intl/intl.dart';

//class formatter to format the price. 
class Formatter {
  static String formatPrice(int? price) {
    var _format = NumberFormat.simpleCurrency(decimalDigits: 0,name: "IDR");
    return _format.format(price);
  }
}
