import 'package:math_expressions/math_expressions.dart';

String calValue = '0';

num result() {
  Parser p = Parser();
  Expression exp = p.parse(
    calValue.replaceAll("÷", '/').replaceAll('x', '*').replaceAll('%', '/100'),
  );
  ContextModel cm = ContextModel();
  return exp.evaluate(EvaluationType.REAL, cm);
}
