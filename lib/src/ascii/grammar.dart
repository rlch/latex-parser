import '../ast/symbol.dart';
import '../ast/binary.dart';
import '../ast/unary.dart';
import '../ast/variable.dart';
import 'package:petitparser/petitparser.dart';

class AsciiDefinition extends GrammarDefinition {
  @override
  Parser start() => ref0(E).end();

  // Expressions (non-terminals)

  // Simple expression
  Parser S() => ref0(variable) | (ref0(l) & ref0(E).trim() & ref0(r));

  // Intermediate expression
  Parser I() =>
      (ref0(S) & char('_') & ref0(S)) |
      (ref0(S) & char('^') & ref0(S)) |
      (ref0(S) & char('_') & ref0(S) & char('^') & ref0(S)) |
      ref0(S);

  // Expression
  Parser E() =>
      (ref0(I) & ref0(E)) | (ref0(I) & char('/') & ref0(I)) | epsilon();

  // Terminal symbols
  // Parser<String> text() => letter().plus().flatten();

  Parser v() => ref0(variable) | ref0(greek) | ref0(number);

  Parser<Unary> u() => [
        for (final us in unarySymbols) string(us.ascii).map((_) => us)
      ].toChoiceParser();

  Parser<Binary> b() => [
        for (final bs in binarySymbols) string(bs.ascii).map((_) => bs)
      ].toChoiceParser();

  Parser l() => char('(') | char('[') | char('{') | string('(:') | string('{:');
  Parser r() => char(')') | char(']') | char('}') | string(':)') | string(':}');

  Parser<Symbol> greek() => [
        for (final gs in greekSymbols) string(gs.ascii).map((_) => gs)
      ].toChoiceParser();

  Parser<Variable> variable() => letter().map((l) => Variable(l));

  Parser<num> number() => (char('-').optional() &
              digit().plus() &
              (char('.') & digit().plus()).optional())
          .flatten()
          .map((n) {
        return int.tryParse(n) ?? double.tryParse(n)!;
      });
}

void test() {
  final parser = AsciiDefinition().build();

  final res = parser.parse('x^2');
  print(res);
}
