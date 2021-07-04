import 'symbol.dart';

class Infix implements Symbol {
  Infix(
    this.ascii,
    this.latex,
  );

  dynamic left, right;

  Infix get copy => Infix(ascii, latex);

  @override
  final String ascii, latex;

  @override
  String toString() {
    return '$left$latex$right';
  }

  static Infix plus = Infix('+', '+').copy,
      minus = Infix('-', '-').copy,
      divide = Infix('/', '/').copy,
      multiply = Infix('*', '\\cdot').copy,
      sup = Infix('^', '^').copy,
      sub = Infix('_', '_').copy;
}
