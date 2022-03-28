import 'package:amount_formatter/amount_formatter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('without currency', () {
    test('returns 1 000 when amount is 1000', () {
      final amountFormatter = AmountFormatter();
      final result = amountFormatter.format('1000');
      expect(result, '1 000');
    });
  });

  group('with currency', () {
    test('returns 1 000 FCFA when amount is 1000 and currency is FCFA', () {
      final amountFormatter = AmountFormatter(currency: 'FCFA');
      final result = amountFormatter.format('1000');
      expect(result, '1 000 FCFA');
    });
  });

  group('with custom separator and currency', () {
    test('returns 1,000 FCFA when amount is 1000, currency is FCFA and separator is ,', () {
      final amountFormatter = AmountFormatter(currency: 'FCFA', separator: ',');
      final result = amountFormatter.format('1000');
      expect(result, '1,000 FCFA');
    });
  });
}
