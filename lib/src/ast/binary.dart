import 'symbol.dart';

class Brackets {
  const Brackets(this.left, this.right);

  static const Brackets curly = Brackets('{', '}'),
      square = Brackets('[', ']'),
      round = Brackets('(', ')');

  final String left, right;
}

class Binary implements Symbol {
  Binary(
    this.ascii,
    this.latexCommand, {
    this.lb = Brackets.curly,
    this.rb = Brackets.curly,
  });

  Symbol? left, right;
  final Brackets lb, rb;

  Binary get copy => Binary(ascii, latex);

  @override
  final String ascii;

  final String latexCommand;
  @override
  String get latex =>
      '$latexCommand${lb.left}${left?.latex}${lb.right}${rb.left}${right?.latex}${rb.right}';

  @override
  String toString() => latex;
}

final binarySymbols = [
  Binary('root', '\\sqrt', lb: Brackets.square),
  Binary('frac', '\\frac'),
].map((e) => e.copy);
