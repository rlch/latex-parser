import 'symbol.dart';

class Variable implements Symbol {
  const Variable(String variable)
      : ascii = variable,
        latex = variable;

  @override
  final String ascii, latex;

  @override
  String toString() => latex;
}
