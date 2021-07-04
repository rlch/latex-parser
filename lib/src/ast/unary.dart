import 'symbol.dart';

class Unary extends Symbol {
  Unary(
    String ascii,
    String latex,
  ) : super(ascii, latex);

  late dynamic symbol;

  Unary get copy => Unary(ascii, latex);
}

final unarySymbols = [
  Unary('tilde', '\\tilde'),
  Unary('abs', '\\abs'),
  Unary('Abs', '\\abs'),
  Unary('norm', '\\norm'),
  Unary('floor', '\\floor'),
  Unary('ceil', '\\ceil'),
  Unary('sqrt', '\\sqrt'),
  Unary('hat', '\\hat'),
  Unary('bar', '\\bar'),
  Unary('vec', '\\vec'),
  Unary('dot', '\\dot'),
  Unary('ddot', '\\ddot'),
  Unary('ul', '\\underline'),
  Unary('ubrace', '\\underbrace'),
  Unary('obrace', '\\overbrace'),
  Unary('text', '\\text'),
].map((e) => e.copy);
