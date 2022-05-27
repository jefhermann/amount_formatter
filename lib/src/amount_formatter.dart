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
  
  String formatAmountDouble(String amount) {
  final chars = amount.split('.');
  final charsfirst = chars[0].split('');
  String newString = '';
  for (int i = charsfirst.length - 1; i >= 0; i--) {
    if ((charsfirst.length - 1 - i) % 3 == 0 && i != charsfirst.length - 1)
      newString = ' ' + newString;
    newString = charsfirst[i] + newString;
  }
  return newString + "." + chars[1];
}
}
