An amount formatter.

## Features

- Format amount
- Set separator character
- Set currency

## Installation

Add to ```pubspec.yaml```

```yaml
dependencies:
  amount_formatter: ^0.0.1
```

## Usage

```dart
/// simple format
final amountFormatter = AmountFormatter();
amountFormatter.format('1000'); // 1 000

/// format with separator and currency
final amountFormatter = AmountFormatter(currency: 'FCFA', separator: ',');
amountFormatter.format('1000'); // 1,000 FCFA
```
