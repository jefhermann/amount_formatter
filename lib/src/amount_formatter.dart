class AmountFormatter {
  final String separator;
  final String currency;

  AmountFormatter({
    this.separator = ' ',
    this.currency = '',
  });

  String format(String amount) {
    final chars = amount.split('');
    String newString = '';
    for (int i = chars.length - 1; i >= 0; i--) {
      if ((chars.length - 1 - i) % 3 == 0 && i != chars.length - 1) newString = separator + newString;
      newString = chars[i] + newString;
    }
    return currency.isEmpty ? newString : newString + ' ' + currency;
  }
}
