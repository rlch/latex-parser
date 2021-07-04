import 'package:petitparser/petitparser.dart';

class AsciiDefinition extends GrammarDefinition {
  @override
  Parser start() {
    throw UnimplementedError();
  }

  // Terminal symbols
  Parser<String> string() => letter().plus().flatten();
  Parser<
}
