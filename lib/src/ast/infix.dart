import 'symbol.dart';

class Infix implements Symbol {
  Infix(
    this.ascii,
    this.latex,
  );

  late dynamic left, right;

  Infix get copy => Infix(ascii, latex);

  @override
  final String ascii, latex;

  static Infix plus = Infix('+', '+').copy,
      minus = Infix('-', '-').copy,
      divide = Infix('/', '/').copy,
      multiply = Infix('*', '\\cdot').copy,
      sup = Infix('^', '^').copy,
      sub = Infix('_', '_').copy;
}
